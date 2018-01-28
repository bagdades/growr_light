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
#include <avr/eeprom.h>
#include "twi.h"

#define DS1307_ADR		0xD0

uint8_t flagOn = TRUE;

uint8_t ds1307Buffer[8];
uint8_t seconds;
uint8_t minutes;
uint8_t hours;
uint8_t setHour;
uint8_t setMin;

uint8_t currLight;
int16_t currTemp;
uint8_t currTimeHour;
uint8_t currTimeMinute;

//Setting values
uint8_t upperTimeHour = 6;
uint8_t upperTimeMinute = 0;
uint8_t lowerTimeHour = 21;
uint8_t lowerTimeMinute = 0;
int8_t tempOff = 100;
uint8_t lightOff = 20; //%

uint8_t upperTimeHourEem EEMEM = 6;
uint8_t upperTimeMinuteEem EEMEM = 0;
uint8_t lowerTimeHourEem EEMEM = 21;
uint8_t lowerTimeMinuteEem EEMEM = 0;
uint8_t tempOffEem EEMEM = 100;
uint8_t lightOffEem EEMEM = 20; //%

const char text[] PROGMEM = "Light controll system.\n";
const char error[] PROGMEM = "error\r\n";
const char ok[] PROGMEM = "ok\r\n";
const char largeValue[] PROGMEM = "large value\r\n";
const char start[] PROGMEM = "start\r\n";
const char tempOut[] PROGMEM = "Temperature = ";
const char lightOut[] PROGMEM = "Light = ";
const char timeOut[] PROGMEM = "Time is: ";
const char setTime[] PROGMEM = "Setting time.\n";
const char setLight[] PROGMEM = "Setting light.\n";
const char setTempOff[] PROGMEM = "Setting temperature.\n";
const char setUpperTime[] PROGMEM = "Setting upper time\n";
const char setLowerTime[] PROGMEM = "Setting lower time\n";
const char helpText[] PROGMEM = "\nTemp - current temperature\n"
									"Light - current light\n"
									"Time - current time\n"
									"SetTime hh mm\n"
									"upperTime hh mm\n"
									"lowerTime hh mm\n"
									"SetLight xxx value 0 - 100\n"
									"cutTemp xxx value 50 - 200\n"
									"on - Light On\n"
									"off - Light OFF\n";
const char lightOn[] PROGMEM = "Light ON\n";
const char lightOFF[] PROGMEM = "Light OFF\n";
const char settings[] PROGMEM = "\nSettings:";

char tempString[6] = {' ', ' ', ' ', ' ', ' ', '\0'};
char lightString[6] = {' ', ' ', ' ', ' ', ' ', '\0'};
char setString[6] = {' ', ' ', ' ', '\0'};

void DS1307ReadTime(void)
{
	TwiWriteRegAddr(DS1307_ADR, 0);  /* Send pointer register */
	TwiReadData(DS1307_ADR, 3);      /* Read three byte data */
	TwiGetData(ds1307Buffer, 4);
	seconds = ds1307Buffer[1];
	minutes = ds1307Buffer[2];
	hours = ds1307Buffer[3];
	currTimeHour = ((hours >> 4) * 10) + (hours & 0x0F);
	currTimeMinute = ((minutes >> 4) * 10 ) + (minutes & 0x0F);
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

void SettingsToUart(void)
{
	Uint8ToString(upperTimeHour, setString);
	UsartSendString("\nupperTimeHour: ");
	UsartSendString(setString);
	Uint8ToString(upperTimeMinute, setString);
	UsartSendString("\nupperTimeMinute: ");
	UsartSendString(setString);
	Uint8ToString(lowerTimeHour, setString);
	UsartSendString("\nlowerTimeHour: ");
	UsartSendString(setString);
	Uint8ToString(lowerTimeMinute, setString);
	UsartSendString("\nlowerTimeMinute: ");
	UsartSendString(setString);
	Uint8ToString(tempOff, setString);
	UsartSendString("\ntempOff: ");
	UsartSendString(setString);
	Uint8ToString(lightOff, setString);
	UsartSendString("\nlightOff: ");
	UsartSendString(setString);
	UsartPutChar('\n');
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

void SaveEepromSetting(void)
{
	eeprom_write_byte(&lightOffEem, lightOff);
	eeprom_write_byte(&lowerTimeHourEem, lowerTimeHour);
	eeprom_write_byte(&lowerTimeMinuteEem, lowerTimeMinute);
	eeprom_write_byte(&tempOffEem, tempOff);
	eeprom_write_byte(&upperTimeHourEem, upperTimeHour);
	eeprom_write_byte(&upperTimeMinuteEem, upperTimeMinute);
}

void ParserHandler(uint8_t argc, char *argv[])
{
	const char *resp = error;
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
	if(ParserEqualString(argv[0], "upperTime")) {
		resp = setUpperTime;
		if(argc > 2) {
			upperTimeHour = ParserStringToUchar(argv[1]);
			upperTimeMinute = ParserStringToUchar(argv[2]);
		}
		SchedulerAddTask(SaveEepromSetting, 3000, 0);
	}
	if(ParserEqualString(argv[0], "lowerTime")) {
		resp = setLowerTime;
		if(argc > 2) {
			lowerTimeHour = ParserStringToUchar(argv[1]);
			lowerTimeMinute = ParserStringToUchar(argv[2]);
		}
		SchedulerAddTask(SaveEepromSetting, 3000, 0);
	}
	if(ParserEqualString(argv[0], "SetLight")) {
		resp = setLight;
		if(argc > 1) {
			lightOff = ParserStringToUchar(argv[1]);
		}
		SchedulerAddTask(SaveEepromSetting, 3000, 0);
	}
	if(ParserEqualString(argv[0], "cutTemp")) {
		resp = setTempOff;
		if(argc > 1) {
			tempOff = ParserStringToUchar(argv[1]);
		}
		SchedulerAddTask(SaveEepromSetting, 3000, 0);
	}
	if (ParserEqualString(argv[0], "help")) {
		resp = helpText;
	}
	if (ParserEqualString(argv[0], "on")) {
		flagOn = TRUE;	
		resp = lightOn;
	}
	if (ParserEqualString(argv[0], "off")) {
		flagOn = FALSE;
		resp = lightOFF;
	}
	if (ParserEqualString(argv[0], "Settings")) {
		resp = settings;
		SchedulerAddTask(SettingsToUart, 0, 0);
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
	temperature = ADCRead(ADC_VREF_256, 0);
	currTemp = ConvertADCTemp(temperature);
	IntToString(currTemp, tempString);
	lighting = ADCRead(ADC_VREF_VCC, 1);
	currLight = lighting / 10;
	IntToString(lighting, lightString);
}

void ReadEepromSetting(void)
{
	lightOff = eeprom_read_byte(&lightOffEem);
	lowerTimeHour = eeprom_read_byte(&lowerTimeHourEem);
	lowerTimeMinute = eeprom_read_byte(&lowerTimeMinuteEem);
	tempOff = eeprom_read_byte(&tempOffEem);
	upperTimeHour = eeprom_read_byte(&upperTimeHourEem);
	upperTimeMinute = eeprom_read_byte(&upperTimeMinuteEem);
}

void LightControll(void)
{
	uint16_t currTimeHM = (currTimeHour << 8) + currTimeMinute;
	uint16_t upperTimeHM = (upperTimeHour << 8) + upperTimeMinute;
	uint16_t lowerTimeHM = (lowerTimeHour << 8) + lowerTimeMinute;

	if (flagOn) {
		if(currTimeHM >= upperTimeHM && currTimeHM < lowerTimeHM){
			if ((currLight < lightOff) || (currTemp > tempOff)) {
				LightOff();
			} else {
				LightOn();
			}
		} else {
			LightOff();
		}
	} else {
		LightOff();
	}
}

int main(void) {
	UsartInit(9600);
	SchedulerInit();
	ADCInit();
	TwiInit(100);
	InitSystem();
	sei();
	ReadEepromSetting();
	UsartSendStringFlash(text);
	UsartSendStringFlash(helpText);
	SchedulerAddTask(ListenUsart, 1, 10);
	SchedulerAddTask(MeasureTemp, 100, 1000);
	SchedulerAddTask(DS1307ReadTime, 500, 500);
	SchedulerAddTask(LightControll, 0, 100);
	while(1) {
		SchedulerDispatch();
	}
}
