/*
 * =====================================================================================
 *
 *       Filename:  main.c
 *
 *    Description:  
 *
 *        Version:  1.0
 *        Created:  14.12.17 19:37:52
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  vovan (), volodumurkoval0@gmail.com
 *   Organization:  
 *
 * =====================================================================================
 */

#include "light.h"
#include "usart.h"
#include "parser.h"
#include "scheduler.h"
#include <util/delay.h>
#include "twi.h"

#define DS1307_ADR		0xD0
uint8_t ds1307Buffer[8];
uint8_t seconds;
uint8_t minutes;
uint8_t hours;
uint8_t setHour;
uint8_t setMin;

const char text[] PROGMEM = "Flash text proba.";
const char error[] PROGMEM = "error\r\n";
const char ok[] PROGMEM = "ok\r\n";
const char largeValue[] PROGMEM = "large value\r\n";
const char start[] PROGMEM = "start\r\n";
const char tempOut[] PROGMEM = "Temperature = ";
const char lightOut[] PROGMEM = "Light = ";
const char timeOut[] PROGMEM = "Time is: ";
const char setTime[] PROGMEM = "Set time\n";

char tempString[6] = {' ', ' ', ' ', ' ', ' ', '\0'};
char lightString[6] = {' ', ' ', ' ', ' ', ' ', '\0'};

void DS1307ReadTime(void)
{
	TwiWriteRegAddr(DS1307_ADR, 0);  /* Send pointer register */
	TwiReadData(DS1307_ADR, 3);      /* Read three byte data */
	TwiGetData(ds1307Buffer, 4);
	seconds = ds1307Buffer[1];
	minutes = ds1307Buffer[2];
	hours = ds1307Buffer[3];
}

void DS1307SetTime(void)
{
	ds1307Buffer[0] = DS1307_ADR & 0xFE;
	ds1307Buffer[1] = 0;
	ds1307Buffer[2] = 0;
	ds1307Buffer[3] = ((setMin / 10) << 4) | ((setMin % 10) & 0x0F);
	ds1307Buffer[4] = ((setHour / 10) << 4) | ((setHour % 10) & 0x0F);
	TwiSendData(ds1307Buffer, 5);
}

void TimeToUart(void)
{
	UsartPutChar((hours >> 4) + '0');
	UsartPutChar((hours & 0x0F) + '0');
	UsartPutChar(':');
	UsartPutChar((minutes >> 4) + '0');
	UsartPutChar((minutes & 0x0F) + '0');
	UsartPutChar(':');
	UsartPutChar((seconds >> 4) + '0');
	UsartPutChar((seconds & 0x0F) + '0');
	UsartPutChar('\n');
}

void TemperatureToUsart(void)
{
	UsartSendString(tempString);
	UsartPutChar('\n');
}

void LightToUsart(void)
{
	UsartSendString(lightString);
	UsartPutChar('\n');
}

void ParserHandler(uint8_t argc, char *argv[])
{
	const char *resp = error;
	uint8_t value = 0;
	if (ParserEqualString(argv[0], "Test")) {
		if (argc > 1) {
			value = ParserStringToUchar(argv[1]);
			if (value < 100) {
				resp = ok;
			} else {
				resp = largeValue;
			}
		}	
	}
	if(ParserEqualString(argv[0], "Temp")) {
		resp = tempOut;
		SchedulerAddTask(TemperatureToUsart, 0, 0);
	}
	if(ParserEqualString(argv[0], "Light")) {
		resp = lightOut;
		SchedulerAddTask(LightToUsart, 0, 0);
	}
	if(ParserEqualString(argv[0], "Time")) {
		resp = timeOut;
		SchedulerAddTask(TimeToUart, 10, 0);
	}
	if(ParserEqualString(argv[0], "SetTime")) {
		resp = setTime;
		if(argc > 2) {
			setHour = ParserStringToUchar(argv[1]);
			setMin = ParserStringToUchar(argv[2]);
		}
		SchedulerAddTask(DS1307SetTime, 0, 0);
	}
	UsartSendStringFlash(resp);
}

void ListenUsart(void)
{
	uint8_t symbol;
	if (UsartGetRxCount()) {
		symbol = UsartGetChar();
		ParserParse(symbol);
	}
}

void MeasureTemp(void)
{
	int16_t temperature;
	int16_t lighting;
	temperature = ADCRead(0);
	temperature = ConvertADCTemp(temperature);
	IntToString(temperature, tempString);
	lighting = ADCRead(1);
	IntToString(lighting, lightString);
	/* UsartSendString(tempString); */
	/* UsartPutChar('\n'); */
}

int main(void) {
	UsartInit(9600);
	SchedulerInit();
	ADCInit();
	TwiInit(100);
	sei();
	/* DS1307SetTime(); */
	UsartSendString("Hello, World!\n");
	UsartSendStringFlash(text);
	SchedulerAddTask(ListenUsart, 1, 10);
	SchedulerAddTask(MeasureTemp, 100, 1000);
	SchedulerAddTask(DS1307ReadTime, 500, 500);
	while(1) {
		SchedulerDispatch();
	}
}
