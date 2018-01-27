/*
 * =====================================================================================
 *
 *       Filename:  twi.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  25.01.18 21:32:33
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "twi.h"

volatile static uint8_t twiBuffer[TWI_BUFFER_SIZE];
volatile static uint8_t twiState = TWI_NO_STATE;
volatile static uint8_t twiMsgSize;

static uint8_t prescl[4] = {2, 8, 32, 128};

uint8_t TwiInit(uint16_t baudRateTwi)
{
	/* TWBR = TWBR_VALUE; */
	/* TWSR = 0; */
	/* TWCR |= (1 << TWEN); #<{(| Enable TWI |)}># */
	uint8_t i;
	uint16_t twbrValue;

	for (i = 0; i < 4; i++) {
		twbrValue = ((((F_CPU) / 1000UL) / baudRateTwi) - 16) / prescl[i];
		if((twbrValue > 0) && (twbrValue < 256)) {
			TWBR = (uint8_t)twbrValue;
			TWSR = i;
			TWDR = 0xFF;
			TWCR = (1 << TWEN);
			return TWI_SUCCESS;
		}
	}
	return 0;
}

static uint8_t TwiTransceiverBusy(void)
{
	return (TWCR & (1 << TWIE));
}

uint8_t TwiGetState(void)
{
	while(TwiTransceiverBusy());
	return twiState;
}

void TwiSendData(uint8_t *msg, uint8_t lenght)
{
	uint8_t i;
	while(TwiTransceiverBusy());
	twiMsgSize = lenght;
	twiBuffer[0] = msg[0];

	if(!(msg[0] & 0x01))
	{
		for (i = 1; i < lenght; i++) {
			twiBuffer[i] = msg[i];
		}
	}
	twiState = TWI_NO_STATE;
	TWCR = (1 << TWEN) | (1 << TWIE) | ( 1 << TWINT) | ( 1 << TWSTA);
}

void TwiWriteRegAddr(uint8_t devAddr, uint8_t regAddr)
{
	while(TwiTransceiverBusy());
	twiMsgSize = 2;
	twiBuffer[0] = devAddr & 0xFE; //Write device address
	twiBuffer[1] = regAddr;
	twiState = TWI_NO_STATE;
	TWCR = (1 << TWEN) | (1 << TWIE) | ( 1 << TWINT) | ( 1 << TWSTA);
}

void TwiReadData(uint8_t devAddr, uint8_t lenght)
{
	while(TwiTransceiverBusy());
	twiMsgSize = lenght + 1;       /* lenght plus byte devAddr */
	twiBuffer[0] = devAddr | 0x01; /* Read operation */
	twiState = TWI_NO_STATE;
	TWCR = (1 << TWEN) | (1 << TWIE) | ( 1 << TWINT) | ( 1 << TWSTA);
}

uint8_t TwiGetData(uint8_t *msg, uint8_t lenght)
{
	uint8_t i;
	while(TwiTransceiverBusy());
	if(twiState == TWI_SUCCESS){
		for (i = 0; i < lenght; i++) {
			msg[i] = twiBuffer[i];
		}
	}
	return twiState;
}

ISR(TWI_vect)
{
	static uint8_t ptr;
	uint8_t statusTwi = TWSR & TWSR_MASK;
	switch (statusTwi) {
		case TWI_START:
		case TWI_REP_START:
			ptr = 0;
		case TWI_MTX_ADR_ACK:
		case TWI_MTX_DATA_ACK:
			if(ptr < twiMsgSize){
				TWDR = twiBuffer[ptr];
				TWCR = (1 << TWEN) | ( 1 << TWIE) | (1 << TWINT);
				ptr++;
			} else {
				twiState = TWI_SUCCESS;
				TWCR = (1 << TWEN) | (1 << TWINT) | (1 << TWSTO) | (0 << TWIE);
			}
			break;
		case TWI_MRX_DATA_ACK:
			twiBuffer[ptr] = TWDR;
			ptr++;
		case TWI_MRX_ADR_ACK:
			if (ptr < (twiMsgSize - 1)) {
				TWCR = (1 << TWEN) | (1 << TWIE) | (1 << TWINT) | (1 << TWEA);
			} else {
				TWCR = (1 << TWEN) | (1 << TWIE) | (1 << TWINT);
			}
			break;
		case TWI_MRX_DATA_NACK:
			twiBuffer[ptr] = TWDR;
			twiState = TWI_SUCCESS;
			TWCR = (1 << TWEN) | (1 << TWINT) | (1 << TWSTO);
			break;
		case TWI_ARB_LOST:
			TWCR = (1 << TWEN) | (1 << TWIE) | (1 << TWINT) | (1 << TWSTA);
			break;
		case TWI_MTX_ADR_NACK:
		case TWI_MRX_ADR_NACK:
		case TWI_MTX_DATA_NACK:
		case TWI_BUS_ERROR:
		default:
			twiState = statusTwi;
			TWCR = (1 << TWEN) | (0 << TWIE) | (0 << TWINT) | (0 << TWEA) | (0 << TWSTA) | (0 << TWSTO) | (0 << TWWC);
	}

}
