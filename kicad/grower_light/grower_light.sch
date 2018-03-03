EESchema Schematic File Version 4
LIBS:grower_light-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C3
U 1 1 5A686FD4
P 5550 1550
F 0 "C3" H 5450 1400 50  0000 C CNN
F 1 "100n" H 5450 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5588 1400 50  0001 C CNN
F 3 "" H 5550 1550 50  0001 C CNN
	1    5550 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5A687782
P 5550 1800
F 0 "#PWR012" H 5550 1550 50  0001 C CNN
F 1 "GND" H 5555 1627 50  0000 C CNN
F 2 "" H 5550 1800 50  0001 C CNN
F 3 "" H 5550 1800 50  0001 C CNN
	1    5550 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1800 5550 1750
Wire Wire Line
	5550 1400 5550 1350
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5A68A03A
P 5150 1250
F 0 "#FLG02" H 5150 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 1424 50  0000 C CNN
F 2 "" H 5150 1250 50  0001 C CNN
F 3 "" H 5150 1250 50  0001 C CNN
	1    5150 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1250 5150 1350
Wire Wire Line
	5150 1350 5550 1350
Connection ~ 5550 1350
Wire Wire Line
	5550 1350 5550 1250
Wire Wire Line
	5550 1750 5550 1700
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5A6C3628
P 5150 1700
F 0 "#FLG03" H 5150 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 1874 50  0000 C CNN
F 2 "" H 5150 1700 50  0001 C CNN
F 3 "" H 5150 1700 50  0001 C CNN
	1    5150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1700 5150 1750
Wire Wire Line
	5150 1750 5550 1750
Connection ~ 5550 1750
$Comp
L power:GND #PWR017
U 1 1 5A6CBB0F
P 6700 4500
F 0 "#PWR017" H 6700 4250 50  0001 C CNN
F 1 "GND" H 6705 4327 50  0000 C CNN
F 2 "" H 6700 4500 50  0001 C CNN
F 3 "" H 6700 4500 50  0001 C CNN
	1    6700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4500 6700 4250
Wire Wire Line
	6700 4250 6050 4250
Wire Wire Line
	3250 4200 3250 4250
Wire Wire Line
	3250 4250 3650 4250
Text Label 6250 3650 0    50   ~ 0
RX
Text Label 6250 3550 0    50   ~ 0
TX
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5A6DB38B
P 6950 3650
F 0 "J3" H 6870 3967 50  0000 C CNN
F 1 "ESP_UART" H 6870 3876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6950 3650 50  0001 C CNN
F 3 "~" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3750 6650 3750
Wire Wire Line
	6650 3750 6650 3800
$Comp
L Device:R R3
U 1 1 5A6EB84D
P 3450 3750
F 0 "R3" V 3243 3750 50  0000 C CNN
F 1 "100" V 3334 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3380 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3750 3650 3750
Wire Wire Line
	3250 3700 3250 3750
Wire Wire Line
	3250 3750 3300 3750
$Comp
L Device:R R7
U 1 1 5A6F0A73
P 6850 4150
F 0 "R7" V 6800 3950 50  0000 C CNN
F 1 "10k" V 6850 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6780 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4150 6700 4150
$Comp
L power:GND #PWR018
U 1 1 5A6F5F4B
P 7050 4500
F 0 "#PWR018" H 7050 4250 50  0001 C CNN
F 1 "GND" H 7055 4327 50  0000 C CNN
F 2 "" H 7050 4500 50  0001 C CNN
F 3 "" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4150 7050 4150
Wire Wire Line
	7050 4150 7050 4500
Wire Wire Line
	3550 3550 3650 3550
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5A75334C
P 2750 3250
F 0 "J2" H 2830 3242 50  0000 L CNN
F 1 "Sleep" H 2830 3151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2750 3250 50  0001 C CNN
F 3 "~" H 2750 3250 50  0001 C CNN
	1    2750 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 3150 3550 3550
Wire Wire Line
	3000 3250 3000 3850
Wire Wire Line
	3000 3850 3650 3850
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5A763D59
P 3800 1350
F 0 "U1" H 3800 1592 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 3800 1501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3800 1550 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 3900 1100 50  0001 C CNN
	1    3800 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A76D422
P 3800 1700
F 0 "#PWR08" H 3800 1450 50  0001 C CNN
F 1 "GND" H 3805 1527 50  0000 C CNN
F 2 "" H 3800 1700 50  0001 C CNN
F 3 "" H 3800 1700 50  0001 C CNN
	1    3800 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1700 3800 1650
Wire Wire Line
	4100 1350 4400 1350
Wire Wire Line
	4400 1350 4400 1250
$Comp
L power:+5V #PWR04
U 1 1 5A7768F4
P 3250 1250
F 0 "#PWR04" H 3250 1100 50  0001 C CNN
F 1 "+5V" H 3265 1423 50  0000 C CNN
F 2 "" H 3250 1250 50  0001 C CNN
F 3 "" H 3250 1250 50  0001 C CNN
	1    3250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1250 3250 1350
Wire Wire Line
	3250 1350 3500 1350
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5A7941D2
P 2200 1250
F 0 "#FLG01" H 2200 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 2200 1424 50  0000 C CNN
F 2 "" H 2200 1250 50  0001 C CNN
F 3 "" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1250 2200 1350
Wire Wire Line
	2600 1350 2600 1400
Wire Wire Line
	2200 1350 2600 1350
$Comp
L power:+5V #PWR02
U 1 1 5A7806C7
P 2600 1250
F 0 "#PWR02" H 2600 1100 50  0001 C CNN
F 1 "+5V" H 2615 1423 50  0000 C CNN
F 2 "" H 2600 1250 50  0001 C CNN
F 3 "" H 2600 1250 50  0001 C CNN
	1    2600 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5A78067C
P 2950 1250
F 0 "#PWR03" H 2950 1100 50  0001 C CNN
F 1 "+5V" H 2965 1423 50  0000 C CNN
F 2 "" H 2950 1250 50  0001 C CNN
F 3 "" H 2950 1250 50  0001 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
Connection ~ 2600 1350
Wire Wire Line
	2600 1250 2600 1350
Wire Wire Line
	2950 1250 2950 1400
Wire Wire Line
	2600 1800 2600 1700
Wire Wire Line
	2950 1800 2950 1700
$Comp
L power:GND #PWR011
U 1 1 5A687DB1
P 2950 1800
F 0 "#PWR011" H 2950 1550 50  0001 C CNN
F 1 "GND" H 2955 1627 50  0000 C CNN
F 2 "" H 2950 1800 50  0001 C CNN
F 3 "" H 2950 1800 50  0001 C CNN
	1    2950 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5A687D92
P 2600 1800
F 0 "#PWR010" H 2600 1550 50  0001 C CNN
F 1 "GND" H 2605 1627 50  0000 C CNN
F 2 "" H 2600 1800 50  0001 C CNN
F 3 "" H 2600 1800 50  0001 C CNN
	1    2600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5A68716A
P 2600 1550
F 0 "C1" H 2500 1400 50  0000 C CNN
F 1 "100n" H 2500 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2638 1400 50  0001 C CNN
F 3 "" H 2600 1550 50  0001 C CNN
	1    2600 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1800 5950 1700
$Comp
L power:GND #PWR013
U 1 1 5A7A8BC2
P 5950 1800
F 0 "#PWR013" H 5950 1550 50  0001 C CNN
F 1 "GND" H 5955 1627 50  0000 C CNN
F 2 "" H 5950 1800 50  0001 C CNN
F 3 "" H 5950 1800 50  0001 C CNN
	1    5950 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5A7A8BCE
P 5950 1550
F 0 "C4" H 5850 1400 50  0000 C CNN
F 1 "100n" H 5850 1650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5988 1400 50  0001 C CNN
F 3 "" H 5950 1550 50  0001 C CNN
	1    5950 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5950 1250 5950 1400
Wire Wire Line
	3650 3650 3550 3650
Text Label 3550 3650 0    50   ~ 0
ADC
Wire Wire Line
	1750 3700 2050 3700
Text Label 2050 3700 0    50   ~ 0
ADC
Wire Wire Line
	3650 3950 3550 3950
Text Label 3550 3950 0    50   ~ 0
MT
Text Label 2050 4200 0    50   ~ 0
MT
Text Label 2050 4300 0    50   ~ 0
ML
$Comp
L Device:R R1
U 1 1 5A9E4312
P 1150 3450
F 0 "R1" H 1080 3404 50  0000 R CNN
F 1 "27k" H 1080 3495 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 3450 50  0001 C CNN
F 3 "~" H 1150 3450 50  0001 C CNN
	1    1150 3450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5A9E441A
P 1150 3950
F 0 "R4" H 1080 3904 50  0000 R CNN
F 1 "12k" H 1080 3995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1080 3950 50  0001 C CNN
F 3 "~" H 1150 3950 50  0001 C CNN
	1    1150 3950
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 3600 1150 3700
Wire Wire Line
	1150 3800 1150 3700
Connection ~ 1150 3700
Wire Wire Line
	1150 4100 1150 4300
Wire Wire Line
	1150 3200 1150 3300
$Comp
L Device:R R2
U 1 1 5AA00198
P 1750 3450
F 0 "R2" H 1650 3400 50  0000 C CNN
F 1 "1k" H 1650 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1680 3450 50  0001 C CNN
F 3 "~" H 1750 3450 50  0001 C CNN
	1    1750 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 4050 3550 4050
Text Label 3550 4050 0    50   ~ 0
ML
Text Notes 2250 4200 0    50   ~ 0
GPIO14(5)
Text Notes 2250 4300 0    50   ~ 0
GPIO12(6)
Wire Wire Line
	1750 3600 1750 3700
Connection ~ 1750 3700
Wire Wire Line
	1750 3300 1750 3200
Wire Wire Line
	1150 3700 1450 3700
$Comp
L power:GND #PWR019
U 1 1 5A9A7E79
P 7400 4500
F 0 "#PWR019" H 7400 4250 50  0001 C CNN
F 1 "GND" H 7405 4327 50  0000 C CNN
F 2 "" H 7400 4500 50  0001 C CNN
F 3 "" H 7400 4500 50  0001 C CNN
	1    7400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5A9A7FEE
P 7400 4250
F 0 "D1" V 7438 4133 50  0000 R CNN
F 1 "LED" V 7347 4133 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 7400 4250 50  0001 C CNN
F 3 "~" H 7400 4250 50  0001 C CNN
	1    7400 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4400 7400 4500
Wire Wire Line
	7400 4100 7400 4050
Text Label 6750 4050 0    50   ~ 0
LED
$Comp
L Device:R R6
U 1 1 5A9DB11E
P 7150 4050
F 0 "R6" V 7100 4250 50  0000 C CNN
F 1 "220" V 7150 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7080 4050 50  0001 C CNN
F 3 "" H 7150 4050 50  0001 C CNN
	1    7150 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 4050 7000 4050
Wire Wire Line
	7300 4050 7400 4050
Wire Wire Line
	6050 3750 6250 3750
Wire Wire Line
	6050 3850 6250 3850
Text Label 6250 3850 0    50   ~ 0
MTP
Text Label 6250 3750 0    50   ~ 0
OUT
Text Label 1150 3200 0    50   ~ 0
MLP
Text Label 1750 3200 0    50   ~ 0
MTP
Text Notes 1100 3100 0    50   ~ 0
GPIO13(7)
Text Notes 1700 3100 0    50   ~ 0
GPIO4(2)
Wire Wire Line
	3650 4150 3550 4150
Text Label 3550 4150 0    50   ~ 0
MLP
$Comp
L esp-12_07v2_08v2-rescue-esp8266_dht22:ESP-12_07v2_08v2-RESCUE-esp8266_dht22 U2
U 1 1 5A6CB719
P 4850 3900
F 0 "U2" H 4850 4643 60  0000 C CNN
F 1 "ESP-12_07v2" H 4850 4537 60  0000 C CNN
F 2 "lib:ESP-07v2" H 4850 4431 60  0000 C CNN
F 3 "" H 4850 3900 60  0000 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5A9C53B7
P 2100 4700
F 0 "J5" H 2180 4742 50  0000 L CNN
F 1 "Sensors" H 2180 4651 50  0000 L CNN
F 2 "w_conn_screw:mors_3p" H 2100 4700 50  0001 C CNN
F 3 "~" H 2100 4700 50  0001 C CNN
	1    2100 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4700 1450 4700
Wire Wire Line
	1450 4700 1450 3700
Connection ~ 1450 3700
Wire Wire Line
	1450 3700 1750 3700
Wire Wire Line
	1550 4200 1550 4600
Wire Wire Line
	1550 4600 1900 4600
Wire Wire Line
	1550 4200 2050 4200
Wire Wire Line
	1150 4300 1150 4800
Wire Wire Line
	1150 4800 1900 4800
Connection ~ 1150 4300
Wire Wire Line
	1150 4300 2050 4300
Wire Wire Line
	2950 3150 3100 3150
Wire Wire Line
	2950 3250 3000 3250
Wire Wire Line
	6050 3550 6750 3550
Wire Wire Line
	6050 3650 6750 3650
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5A9E4CD6
P 1400 1500
F 0 "J1" H 1480 1492 50  0000 L CNN
F 1 "PWR_+5V" H 1480 1401 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1400 1500 50  0001 C CNN
F 3 "~" H 1400 1500 50  0001 C CNN
	1    1400 1500
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5A9E4DC1
P 1700 1250
F 0 "#PWR01" H 1700 1100 50  0001 C CNN
F 1 "+5V" H 1715 1423 50  0000 C CNN
F 2 "" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5A9E4DF0
P 1700 1800
F 0 "#PWR09" H 1700 1550 50  0001 C CNN
F 1 "GND" H 1705 1627 50  0000 C CNN
F 2 "" H 1700 1800 50  0001 C CNN
F 3 "" H 1700 1800 50  0001 C CNN
	1    1700 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1500 1700 1500
Wire Wire Line
	1700 1500 1700 1800
Wire Wire Line
	1700 1250 1700 1400
Wire Wire Line
	1700 1400 1600 1400
$Comp
L Device:CP C2
U 1 1 5A9E8578
P 2950 1550
F 0 "C2" H 3068 1596 50  0000 L CNN
F 1 "10u" H 3068 1505 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.7" H 2988 1400 50  0001 C CNN
F 3 "~" H 2950 1550 50  0001 C CNN
	1    2950 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5A9E891C
P 6650 3800
F 0 "#PWR015" H 6650 3550 50  0001 C CNN
F 1 "GND" H 6655 3627 50  0000 C CNN
F 2 "" H 6650 3800 50  0001 C CNN
F 3 "" H 6650 3800 50  0001 C CNN
	1    6650 3800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q2
U 1 1 5A9EDC6F
P 4450 5450
F 0 "Q2" H 4655 5496 50  0000 L CNN
F 1 "BSS138" H 4655 5405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4650 5375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 4450 5450 50  0001 L CNN
	1    4450 5450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS138 Q3
U 1 1 5A9EDD1A
P 5250 5450
F 0 "Q3" H 5455 5496 50  0000 L CNN
F 1 "BSS138" H 5455 5405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5450 5375 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/BS/BSS138.pdf" H 5250 5450 50  0001 L CNN
	1    5250 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5A9EDEA3
P 3850 5450
F 0 "SW1" H 3850 5735 50  0000 C CNN
F 1 "RESET" H 3850 5644 50  0000 C CNN
F 2 "w_switch:smd_push" H 3850 5650 50  0001 C CNN
F 3 "" H 3850 5650 50  0001 C CNN
	1    3850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5A9EE262
P 4400 1250
F 0 "#PWR05" H 4400 1100 50  0001 C CNN
F 1 "+3.3V" H 4415 1423 50  0000 C CNN
F 2 "" H 4400 1250 50  0001 C CNN
F 3 "" H 4400 1250 50  0001 C CNN
	1    4400 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5A9EE29E
P 5550 1250
F 0 "#PWR06" H 5550 1100 50  0001 C CNN
F 1 "+3.3V" H 5565 1423 50  0000 C CNN
F 2 "" H 5550 1250 50  0001 C CNN
F 3 "" H 5550 1250 50  0001 C CNN
	1    5550 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5A9EE2D8
P 5950 1250
F 0 "#PWR07" H 5950 1100 50  0001 C CNN
F 1 "+3.3V" H 5965 1423 50  0000 C CNN
F 2 "" H 5950 1250 50  0001 C CNN
F 3 "" H 5950 1250 50  0001 C CNN
	1    5950 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5A9EE3F1
P 3250 3700
F 0 "#PWR014" H 3250 3550 50  0001 C CNN
F 1 "+3.3V" H 3265 3873 50  0000 C CNN
F 2 "" H 3250 3700 50  0001 C CNN
F 3 "" H 3250 3700 50  0001 C CNN
	1    3250 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 5A9EE42D
P 3250 4200
F 0 "#PWR016" H 3250 4050 50  0001 C CNN
F 1 "+3.3V" H 3265 4373 50  0000 C CNN
F 2 "" H 3250 4200 50  0001 C CNN
F 3 "" H 3250 4200 50  0001 C CNN
	1    3250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5A9EE663
P 4550 5000
F 0 "R11" H 4619 5046 50  0000 L CNN
F 1 "470k" H 4619 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4480 5000 50  0001 C CNN
F 3 "~" H 4550 5000 50  0001 C CNN
	1    4550 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5A9EE737
P 5350 5000
F 0 "R12" H 5420 5046 50  0000 L CNN
F 1 "10k" H 5420 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5280 5000 50  0001 C CNN
F 3 "~" H 5350 5000 50  0001 C CNN
	1    5350 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5A9EE7B9
P 4800 5200
F 0 "R13" V 4593 5200 50  0000 C CNN
F 1 "100k" V 4684 5200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4730 5200 50  0001 C CNN
F 3 "~" H 4800 5200 50  0001 C CNN
	1    4800 5200
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5A9F1FFC
P 4550 4750
F 0 "#PWR021" H 4550 4600 50  0001 C CNN
F 1 "+3.3V" H 4565 4923 50  0000 C CNN
F 2 "" H 4550 4750 50  0001 C CNN
F 3 "" H 4550 4750 50  0001 C CNN
	1    4550 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5A9F20C7
P 5350 4750
F 0 "#PWR022" H 5350 4600 50  0001 C CNN
F 1 "+3.3V" H 5365 4923 50  0000 C CNN
F 2 "" H 5350 4750 50  0001 C CNN
F 3 "" H 5350 4750 50  0001 C CNN
	1    5350 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5A9F2157
P 5000 5650
F 0 "C7" H 5115 5696 50  0000 L CNN
F 1 "2u2" H 5115 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1812_4532Metric_Pad1.24x3.50mm_HandSolder" H 5038 5500 50  0001 C CNN
F 3 "~" H 5000 5650 50  0001 C CNN
	1    5000 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5A9F224D
P 3850 5650
F 0 "C6" V 3690 5650 50  0000 C CNN
F 1 "100n" V 3599 5650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3888 5500 50  0001 C CNN
F 3 "~" H 3850 5650 50  0001 C CNN
	1    3850 5650
	0    1    -1   0   
$EndComp
Wire Wire Line
	4050 5450 4150 5450
Wire Wire Line
	4550 5250 4550 5200
Wire Wire Line
	4650 5200 4550 5200
Connection ~ 4550 5200
Wire Wire Line
	4550 5200 4550 5150
Wire Wire Line
	4550 4750 4550 4850
Wire Wire Line
	5350 4850 5350 4750
Wire Wire Line
	5350 5250 5350 5200
Wire Wire Line
	4950 5200 5000 5200
Wire Wire Line
	5000 5200 5000 5450
Wire Wire Line
	5050 5450 5000 5450
Connection ~ 5000 5450
Wire Wire Line
	5000 5450 5000 5500
$Comp
L power:GND #PWR023
U 1 1 5AA036FC
P 3600 5850
F 0 "#PWR023" H 3600 5600 50  0001 C CNN
F 1 "GND" H 3605 5677 50  0000 C CNN
F 2 "" H 3600 5850 50  0001 C CNN
F 3 "" H 3600 5850 50  0001 C CNN
	1    3600 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5AA03812
P 5000 5850
F 0 "#PWR025" H 5000 5600 50  0001 C CNN
F 1 "GND" H 5005 5677 50  0000 C CNN
F 2 "" H 5000 5850 50  0001 C CNN
F 3 "" H 5000 5850 50  0001 C CNN
	1    5000 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5AA03856
P 5350 5850
F 0 "#PWR026" H 5350 5600 50  0001 C CNN
F 1 "GND" H 5355 5677 50  0000 C CNN
F 2 "" H 5350 5850 50  0001 C CNN
F 3 "" H 5350 5850 50  0001 C CNN
	1    5350 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5AA0391C
P 4550 5850
F 0 "#PWR024" H 4550 5600 50  0001 C CNN
F 1 "GND" H 4555 5677 50  0000 C CNN
F 2 "" H 4550 5850 50  0001 C CNN
F 3 "" H 4550 5850 50  0001 C CNN
	1    4550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5850 3600 5650
Wire Wire Line
	3600 5450 3650 5450
Wire Wire Line
	3700 5650 3600 5650
Connection ~ 3600 5650
Wire Wire Line
	3600 5650 3600 5450
Wire Wire Line
	4000 5650 4150 5650
Wire Wire Line
	4150 5650 4150 5450
Connection ~ 4150 5450
Wire Wire Line
	4150 5450 4250 5450
Wire Wire Line
	4550 5650 4550 5850
Wire Wire Line
	5000 5800 5000 5850
Wire Wire Line
	5350 5650 5350 5850
Wire Wire Line
	6050 3950 6300 3950
Wire Wire Line
	6300 3950 6300 5200
Wire Wire Line
	6300 5200 5350 5200
Connection ~ 5350 5200
Wire Wire Line
	5350 5200 5350 5150
Wire Wire Line
	4150 5450 4150 4900
Wire Wire Line
	4150 4900 3100 4900
Wire Wire Line
	3100 4900 3100 3150
Connection ~ 3100 3150
Wire Wire Line
	3100 3150 3550 3150
Text Label 3450 4900 0    50   ~ 0
RESET
$Comp
L Relay_SolidState:MOC3023M U3
U 1 1 5AA43F2B
P 8850 4050
F 0 "U3" H 8850 4375 50  0000 C CNN
F 1 "MOC3023M" H 8850 4284 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 8650 3850 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/MO/MOC3020M.pdf" H 8825 4050 50  0001 L CNN
	1    8850 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5AA4413C
P 8350 3950
F 0 "R5" V 8143 3950 50  0000 C CNN
F 1 "240" V 8234 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8280 3950 50  0001 C CNN
F 3 "~" H 8350 3950 50  0001 C CNN
	1    8350 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	8500 3950 8550 3950
Wire Wire Line
	8200 3950 8050 3950
Text Label 8050 3950 0    50   ~ 0
OUT
$Comp
L power:GND #PWR020
U 1 1 5AA4A0D7
P 8400 4500
F 0 "#PWR020" H 8400 4250 50  0001 C CNN
F 1 "GND" H 8405 4327 50  0000 C CNN
F 2 "" H 8400 4500 50  0001 C CNN
F 3 "" H 8400 4500 50  0001 C CNN
	1    8400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4500 8400 4150
Wire Wire Line
	8400 4150 8550 4150
$Comp
L Device:R R9
U 1 1 5AA50368
P 9250 4350
F 0 "R9" H 9320 4396 50  0000 L CNN
F 1 "10k" H 9320 4305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 9180 4350 50  0001 C CNN
F 3 "~" H 9250 4350 50  0001 C CNN
	1    9250 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5AA50476
P 9250 4800
F 0 "R10" H 9320 4846 50  0000 L CNN
F 1 "330" H 9320 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 9180 4800 50  0001 C CNN
F 3 "~" H 9250 4800 50  0001 C CNN
	1    9250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4200 9250 4150
Wire Wire Line
	9250 4150 9150 4150
Wire Wire Line
	9250 4650 9250 4600
$Comp
L Triac_Thyristor:BT139-600 Q1
U 1 1 5AA56AE8
P 9750 4700
F 0 "Q1" H 9879 4654 50  0000 L CNN
F 1 "BT139-600" H 9300 4550 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9950 4625 50  0001 L CIN
F 3 "https://www.rapidonline.com/pdf/47-3240.pdf" H 9750 4700 50  0001 L CNN
	1    9750 4700
	1    0    0    1   
$EndComp
Wire Wire Line
	9600 4600 9250 4600
Connection ~ 9250 4600
Wire Wire Line
	9250 4600 9250 4500
Wire Wire Line
	9750 4550 9750 3950
Wire Wire Line
	9750 3950 9150 3950
Wire Wire Line
	9250 4950 9250 5100
Wire Wire Line
	9250 5100 9750 5100
Wire Wire Line
	9750 5100 9750 4850
$Comp
L Device:R R8
U 1 1 5AA679C1
P 10100 4250
F 0 "R8" H 10170 4296 50  0000 L CNN
F 1 "51" H 10170 4205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 10030 4250 50  0001 C CNN
F 3 "~" H 10100 4250 50  0001 C CNN
	1    10100 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5AA67B0B
P 10100 4800
F 0 "C5" H 10215 4846 50  0000 L CNN
F 1 "100n" H 10215 4755 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 10138 4650 50  0001 C CNN
F 3 "~" H 10100 4800 50  0001 C CNN
	1    10100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4950 10100 5100
Wire Wire Line
	10100 5100 9750 5100
Connection ~ 9750 5100
Wire Wire Line
	10100 4100 10100 3950
Wire Wire Line
	10100 3950 9750 3950
Connection ~ 9750 3950
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5AA7D05E
P 10700 4550
F 0 "J4" H 10780 4542 50  0000 L CNN
F 1 "OUTPUT" H 10780 4451 50  0000 L CNN
F 2 "w_conn_screw:mors_2p" H 10700 4550 50  0001 C CNN
F 3 "~" H 10700 4550 50  0001 C CNN
	1    10700 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4650 10400 4650
Wire Wire Line
	10400 4650 10400 5100
Wire Wire Line
	10400 5100 10100 5100
Connection ~ 10100 5100
Wire Wire Line
	10100 4400 10100 4650
Wire Wire Line
	10500 4550 10400 4550
Wire Wire Line
	10400 4550 10400 3950
Wire Wire Line
	10400 3950 10100 3950
Connection ~ 10100 3950
$EndSCHEMATC
