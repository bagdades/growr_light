#ifndef  LIGHT_INC
#define  LIGHT_INC
#include <inttypes.h>

/* # define F_CPU		9216000UL  */

/* //TIMER */
/* #define T0_PRESC	1024UL */
/* #define T0_FREQ		1000UL */
/* #define T0_INIT		255 - (F_CPU/(T0_FREQ * T0_PRESC)) */

#define ADC_VREF_TYPE ((1<<REFS1)|(1<<REFS0))   /* Internal 2.56V */
/* #define ADC_VREF_256 ((1<<REFS1)|(1<<REFS0))   #<{(| Internal 2.56V |)}># */
/* #define ADC_VREF_VCC (1<<REFS0)                #<{(| Voltage AVcc |)}># */
#define ADC_VREF_256 0xC0  /* Internal 2.56V */
#define ADC_VREF_VCC 0x40  /* Voltage AVcc */

//Output port
#define OUT_PORT	PORTD
#define OUT_DDR		DDRD
#define OUT_PIN		6
#define LightOff() ((OUT_PORT) &= ~(1 << (OUT_PIN)))
#define LightOn()	((OUT_PORT) |= (1 << (OUT_PIN)))

//Prototypes
void InitSystem(void);
/* void Timer0Init(void); */
void ADCInit(void);
int16_t ADCRead(uint8_t vref, uint8_t chanel);
int ConvertTempADC(int value);
int ConvertADCTemp(int value);
void IntToString(int16_t value, char *strBuf);
void Uint8ToString(uint8_t value, char *strBuf);
#endif   /* ----- #ifndef LIGHT_INC  ----- */
