#ifndef  TWI_INC
#define  TWI_INC

#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>

/*  F_scl = F_cpu/(16 + 2* TWBR* 4^TWPS) */
/* TWBR = ((F_cpu/F_scl) - 16)/(2*4^TWPS) */

#define N_ELEMENTS(X)	(sizeof(X)/sizeof(*(X)))

#define F_I2C	100000UL
#define TWBR_VALUE	(((F_CPU)/(F_I2C) - 16)/ 2)

#if  ((TWBR_VALUE > 255) || (TWBR_VALUE == 0))
#error "TWBR value is not correct"
#endif     /* -----  ((TWBR_VALUE > 255) || (TWBR_VALUE == 0))  ----- */

#define TWI_BUFFER_SIZE 	8

 /* Common status codes */
#define TWI_START 			0x08  	//A START condition has been  transmitted 
#define TWI_REP_START 		0x10  	//A repeated START condition  has been transmitted  
#define TWI_ARB_LOST 		0x38 	//Arbitration lost in SLA+W or data bytes 

 /* MTX status codes */
#define TWI_MTX_ADR_ACK 	0x18 	//SLA+W has been transmitted; ACK has been received 
#define TWI_MTX_ADR_NACK 	0x20 	//SLA+W has been transmitted; NOT ACK has been received
#define TWI_MTX_DATA_ACK 	0x28 	//Data byte has been transmitted; ACK has been received 
#define TWI_MTX_DATA_NACK 	0x30 	//Data byte has been transmitted; NOT ACK has been received 

 /* MRX status codes */
#define TWI_MRX_ADR_ACK 	0x40 	//SLA+R has been transmitted; ACK has been received 
#define TWI_MRX_ADR_NACK 	0x48 	//SLA+R has been transmitted; NOT ACK has been received 
#define TWI_MRX_DATA_ACK 	0x50 	//Data byte has been received; ACK has been returned 
#define TWI_MRX_DATA_NACK 	0x58 	//Data byte has been received; NOT ACK has been returned 

 /* Other status codes */
#define TWI_NO_STATE		0xF8
#define TWI_BUS_ERROR		0x00

#define TWI_SUCCESS		0xFF

#define TWI_READ_BIT	0
#define TWSR_MASK		0xFC

//Prototypes
uint8_t TwiInit(uint16_t baudRateTwi);
uint8_t TwiGetState(void);
void TwiSendData(uint8_t *msg, uint8_t lenght);
void TwiWriteRegAddr(uint8_t devAddr, uint8_t regAddr);
void TwiReadData(uint8_t devAddr, uint8_t lenght);
uint8_t TwiGetData(uint8_t *msg, uint8_t lenght);

#endif   /* ----- #ifndef TWI_INC  ----- */
