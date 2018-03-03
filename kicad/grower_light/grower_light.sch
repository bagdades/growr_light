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
P 7000 2000
F 0 "C3" H 6900 1850 50  0000 C CNN
F 1 "100n" H 6900 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7038 1850 50  0001 C CNN
F 3 "" H 7000 2000 50  0001 C CNN
	1    7000 2000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5A687782
P 7000 2250
F 0 "#PWR011" H 7000 2000 50  0001 C CNN
F 1 "GND" H 7005 2077 50  0000 C CNN
F 2 "" H 7000 2250 50  0001 C CNN
F 3 "" H 7000 2250 50  0001 C CNN
	1    7000 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2250 7000 2200
$Comp
L power:VCC #PWR05
U 1 1 5A688A55
P 7000 1700
F 0 "#PWR05" H 7000 1550 50  0001 C CNN
F 1 "VCC" H 7017 1873 50  0000 C CNN
F 2 "" H 7000 1700 50  0001 C CNN
F 3 "" H 7000 1700 50  0001 C CNN
	1    7000 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1850 7000 1800
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5A68A03A
P 6600 1700
F 0 "#FLG02" H 6600 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 1874 50  0000 C CNN
F 2 "" H 6600 1700 50  0001 C CNN
F 3 "" H 6600 1700 50  0001 C CNN
	1    6600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1700 6600 1800
Wire Wire Line
	6600 1800 7000 1800
Connection ~ 7000 1800
Wire Wire Line
	7000 1800 7000 1700
Wire Wire Line
	7000 2200 7000 2150
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5A6919ED
P 2850 4350
F 0 "J3" H 2930 4342 50  0000 L CNN
F 1 "Temp" H 2930 4251 50  0000 L CNN
F 2 "w_conn_screw:mors_2p" H 2850 4350 50  0001 C CNN
F 3 "~" H 2850 4350 50  0001 C CNN
	1    2850 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5A691A43
P 3450 4350
F 0 "J4" H 3530 4342 50  0000 L CNN
F 1 "Light" H 3530 4251 50  0000 L CNN
F 2 "w_conn_screw:mors_2p" H 3450 4350 50  0001 C CNN
F 3 "~" H 3450 4350 50  0001 C CNN
	1    3450 4350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5A6C3628
P 6600 2150
F 0 "#FLG03" H 6600 2225 50  0001 C CNN
F 1 "PWR_FLAG" H 6600 2324 50  0000 C CNN
F 2 "" H 6600 2150 50  0001 C CNN
F 3 "" H 6600 2150 50  0001 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2150 6600 2200
Wire Wire Line
	6600 2200 7000 2200
Connection ~ 7000 2200
$Comp
L power:GND #PWR019
U 1 1 5A6CBB0F
P 7650 4950
F 0 "#PWR019" H 7650 4700 50  0001 C CNN
F 1 "GND" H 7655 4777 50  0000 C CNN
F 2 "" H 7650 4950 50  0001 C CNN
F 3 "" H 7650 4950 50  0001 C CNN
	1    7650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4950 7650 4700
Wire Wire Line
	7650 4700 7500 4700
$Comp
L power:VCC #PWR018
U 1 1 5A6CDC0B
P 4550 4650
F 0 "#PWR018" H 4550 4500 50  0001 C CNN
F 1 "VCC" H 4567 4823 50  0000 C CNN
F 2 "" H 4550 4650 50  0001 C CNN
F 3 "" H 4550 4650 50  0001 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4650 4550 4700
Wire Wire Line
	4550 4700 5100 4700
Wire Wire Line
	7500 4000 7700 4000
Wire Wire Line
	7500 4100 7700 4100
Text Label 7700 4100 0    50   ~ 0
RX
Text Label 7700 4000 0    50   ~ 0
TX
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5A6DB38B
P 9300 4100
F 0 "J2" H 9220 4417 50  0000 C CNN
F 1 "ESP_UART" H 9220 4326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9300 4100 50  0001 C CNN
F 3 "~" H 9300 4100 50  0001 C CNN
	1    9300 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5A6DB4AB
P 9000 4250
F 0 "#PWR017" H 9000 4000 50  0001 C CNN
F 1 "GND" V 9005 4122 50  0000 R CNN
F 2 "" H 9000 4250 50  0001 C CNN
F 3 "" H 9000 4250 50  0001 C CNN
	1    9000 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 4200 9000 4200
Wire Wire Line
	9000 4200 9000 4250
Wire Wire Line
	9100 4000 8950 4000
Wire Wire Line
	9100 4100 8950 4100
Text Label 8950 4000 2    50   ~ 0
TX
Text Label 8950 4100 2    50   ~ 0
RX
$Comp
L Device:R R4
U 1 1 5A6EB84D
P 4850 4200
F 0 "R4" V 4643 4200 50  0000 C CNN
F 1 "100" V 4734 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4780 4200 50  0001 C CNN
F 3 "" H 4850 4200 50  0001 C CNN
	1    4850 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 4200 5100 4200
$Comp
L power:VCC #PWR016
U 1 1 5A6EE0F1
P 4550 4150
F 0 "#PWR016" H 4550 4000 50  0001 C CNN
F 1 "VCC" H 4567 4323 50  0000 C CNN
F 2 "" H 4550 4150 50  0001 C CNN
F 3 "" H 4550 4150 50  0001 C CNN
	1    4550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4150 4550 4200
Wire Wire Line
	4550 4200 4700 4200
$Comp
L Device:R R7
U 1 1 5A6F0A73
P 7800 4600
F 0 "R7" V 7750 4400 50  0000 C CNN
F 1 "10k" V 7800 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7730 4600 50  0001 C CNN
F 3 "" H 7800 4600 50  0001 C CNN
	1    7800 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4600 7650 4600
$Comp
L power:GND #PWR020
U 1 1 5A6F5F4B
P 8000 4950
F 0 "#PWR020" H 8000 4700 50  0001 C CNN
F 1 "GND" H 8005 4777 50  0000 C CNN
F 2 "" H 8000 4950 50  0001 C CNN
F 3 "" H 8000 4950 50  0001 C CNN
	1    8000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 4600 8000 4600
Wire Wire Line
	8000 4600 8000 4950
$Comp
L power:VCC #PWR014
U 1 1 5A6F8C9B
P 5600 3350
F 0 "#PWR014" H 5600 3200 50  0001 C CNN
F 1 "VCC" H 5617 3523 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5A6F8CA1
P 5850 3400
F 0 "R1" V 5643 3400 50  0000 C CNN
F 1 "10k" V 5734 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5780 3400 50  0001 C CNN
F 3 "" H 5850 3400 50  0001 C CNN
	1    5850 3400
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5A6F8CA7
P 6350 3400
F 0 "C6" V 6098 3400 50  0000 C CNN
F 1 "100n" V 6189 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6388 3250 50  0001 C CNN
F 3 "" H 6350 3400 50  0001 C CNN
	1    6350 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5A6F8CAD
P 6650 3400
F 0 "#PWR015" H 6650 3150 50  0001 C CNN
F 1 "GND" V 6655 3272 50  0000 R CNN
F 2 "" H 6650 3400 50  0001 C CNN
F 3 "" H 6650 3400 50  0001 C CNN
	1    6650 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 3400 6500 3400
Wire Wire Line
	6200 3400 6100 3400
Wire Wire Line
	5700 3400 5600 3400
Wire Wire Line
	5600 3400 5600 3350
Connection ~ 6100 3400
Wire Wire Line
	6100 3400 6000 3400
Wire Wire Line
	6100 3000 5000 3000
Wire Wire Line
	5000 3000 5000 3600
Wire Wire Line
	5000 4000 5100 4000
Wire Wire Line
	6100 3000 6100 3400
NoConn ~ 7500 4400
Text Label 5400 3000 0    50   ~ 0
RES_ESP
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5A75334C
P 5400 3700
F 0 "J1" H 5480 3692 50  0000 L CNN
F 1 "Sleep" H 5480 3601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5400 3700 50  0001 C CNN
F 3 "~" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	5200 3600 5000 3600
Connection ~ 5000 3600
Wire Wire Line
	5000 3600 5000 4000
Wire Wire Line
	5200 3700 4650 3700
Wire Wire Line
	4650 3700 4650 4300
Wire Wire Line
	4650 4300 5100 4300
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U1
U 1 1 5A763D59
P 5250 1800
F 0 "U1" H 5250 2042 50  0000 C CNN
F 1 "LD1117S33TR_SOT223" H 5250 1951 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5250 2000 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 5350 1550 50  0001 C CNN
	1    5250 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5A76D422
P 5250 2150
F 0 "#PWR08" H 5250 1900 50  0001 C CNN
F 1 "GND" H 5255 1977 50  0000 C CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "" H 5250 2150 50  0001 C CNN
	1    5250 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2150 5250 2100
$Comp
L power:VCC #PWR04
U 1 1 5A771C70
P 5850 1700
F 0 "#PWR04" H 5850 1550 50  0001 C CNN
F 1 "VCC" H 5867 1873 50  0000 C CNN
F 2 "" H 5850 1700 50  0001 C CNN
F 3 "" H 5850 1700 50  0001 C CNN
	1    5850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1800 5850 1800
Wire Wire Line
	5850 1800 5850 1700
$Comp
L power:+5V #PWR03
U 1 1 5A7768F4
P 4700 1700
F 0 "#PWR03" H 4700 1550 50  0001 C CNN
F 1 "+5V" H 4715 1873 50  0000 C CNN
F 2 "" H 4700 1700 50  0001 C CNN
F 3 "" H 4700 1700 50  0001 C CNN
	1    4700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1700 4700 1800
Wire Wire Line
	4700 1800 4950 1800
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5A7941D2
P 3650 1700
F 0 "#FLG01" H 3650 1775 50  0001 C CNN
F 1 "PWR_FLAG" H 3650 1874 50  0000 C CNN
F 2 "" H 3650 1700 50  0001 C CNN
F 3 "" H 3650 1700 50  0001 C CNN
	1    3650 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1700 3650 1800
Wire Wire Line
	4050 1800 4050 1850
Wire Wire Line
	3650 1800 4050 1800
$Comp
L power:+5V #PWR01
U 1 1 5A7806C7
P 4050 1700
F 0 "#PWR01" H 4050 1550 50  0001 C CNN
F 1 "+5V" H 4065 1873 50  0000 C CNN
F 2 "" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0001 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5A78067C
P 4400 1700
F 0 "#PWR02" H 4400 1550 50  0001 C CNN
F 1 "+5V" H 4415 1873 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
Connection ~ 4050 1800
Wire Wire Line
	4050 1700 4050 1800
Wire Wire Line
	4400 1700 4400 1850
Wire Wire Line
	4050 2250 4050 2150
Wire Wire Line
	4400 2250 4400 2150
$Comp
L power:GND #PWR010
U 1 1 5A687DB1
P 4400 2250
F 0 "#PWR010" H 4400 2000 50  0001 C CNN
F 1 "GND" H 4405 2077 50  0000 C CNN
F 2 "" H 4400 2250 50  0001 C CNN
F 3 "" H 4400 2250 50  0001 C CNN
	1    4400 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5A687D92
P 4050 2250
F 0 "#PWR09" H 4050 2000 50  0001 C CNN
F 1 "GND" H 4055 2077 50  0000 C CNN
F 2 "" H 4050 2250 50  0001 C CNN
F 3 "" H 4050 2250 50  0001 C CNN
	1    4050 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5A687198
P 4400 2000
F 0 "C2" H 4300 1850 50  0000 C CNN
F 1 "100n" H 4300 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4438 1850 50  0001 C CNN
F 3 "" H 4400 2000 50  0001 C CNN
	1    4400 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5A68716A
P 4050 2000
F 0 "C1" H 3950 1850 50  0000 C CNN
F 1 "100n" H 3950 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 1850 50  0001 C CNN
F 3 "" H 4050 2000 50  0001 C CNN
	1    4050 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 1700 7750 1850
Wire Wire Line
	7400 2250 7400 2150
Wire Wire Line
	7750 2250 7750 2150
$Comp
L power:GND #PWR013
U 1 1 5A7A8BBC
P 7750 2250
F 0 "#PWR013" H 7750 2000 50  0001 C CNN
F 1 "GND" H 7755 2077 50  0000 C CNN
F 2 "" H 7750 2250 50  0001 C CNN
F 3 "" H 7750 2250 50  0001 C CNN
	1    7750 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5A7A8BC2
P 7400 2250
F 0 "#PWR012" H 7400 2000 50  0001 C CNN
F 1 "GND" H 7405 2077 50  0000 C CNN
F 2 "" H 7400 2250 50  0001 C CNN
F 3 "" H 7400 2250 50  0001 C CNN
	1    7400 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5A7A8BC8
P 7750 2000
F 0 "C5" H 7650 1850 50  0000 C CNN
F 1 "100n" H 7650 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7788 1850 50  0001 C CNN
F 3 "" H 7750 2000 50  0001 C CNN
	1    7750 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5A7A8BCE
P 7400 2000
F 0 "C4" H 7300 1850 50  0000 C CNN
F 1 "100n" H 7300 2100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7438 1850 50  0001 C CNN
F 3 "" H 7400 2000 50  0001 C CNN
	1    7400 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	7400 1700 7400 1850
$Comp
L power:VCC #PWR06
U 1 1 5A7B95FF
P 7400 1700
F 0 "#PWR06" H 7400 1550 50  0001 C CNN
F 1 "VCC" H 7417 1873 50  0000 C CNN
F 2 "" H 7400 1700 50  0001 C CNN
F 3 "" H 7400 1700 50  0001 C CNN
	1    7400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5A7B964E
P 7750 1700
F 0 "#PWR07" H 7750 1550 50  0001 C CNN
F 1 "VCC" H 7767 1873 50  0000 C CNN
F 2 "" H 7750 1700 50  0001 C CNN
F 3 "" H 7750 1700 50  0001 C CNN
	1    7750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 4100 5000 4100
Text Label 5000 4100 0    50   ~ 0
ADC
Wire Wire Line
	3200 4150 3500 4150
Text Label 3500 4150 0    50   ~ 0
ADC
Wire Wire Line
	3200 4650 3500 4650
Wire Wire Line
	5100 4400 5000 4400
Text Label 5000 4400 0    50   ~ 0
MT
Text Label 3500 4650 0    50   ~ 0
MT
Wire Wire Line
	2600 4750 3500 4750
Text Label 3500 4750 0    50   ~ 0
ML
$Comp
L Device:R R2
U 1 1 5A9E4312
P 2600 3900
F 0 "R2" H 2530 3854 50  0000 R CNN
F 1 "27k" H 2530 3945 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 3900 50  0001 C CNN
F 3 "~" H 2600 3900 50  0001 C CNN
	1    2600 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5A9E441A
P 2200 4400
F 0 "R5" H 2130 4354 50  0000 R CNN
F 1 "12k" H 2130 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 4400 50  0001 C CNN
F 3 "~" H 2200 4400 50  0001 C CNN
	1    2200 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 4050 2600 4150
Wire Wire Line
	2200 4250 2200 4150
Wire Wire Line
	2200 4150 2600 4150
Connection ~ 2600 4150
Wire Wire Line
	2200 4550 2200 4750
Wire Wire Line
	2200 4750 2600 4750
Connection ~ 2600 4750
Wire Wire Line
	2600 3650 2600 3750
$Comp
L Device:R R3
U 1 1 5AA00198
P 3200 3900
F 0 "R3" H 3100 3850 50  0000 C CNN
F 1 "1k" H 3100 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 3900 50  0001 C CNN
F 3 "~" H 3200 3900 50  0001 C CNN
	1    3200 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 4500 5000 4500
Text Label 5000 4500 0    50   ~ 0
ML
Text Notes 3700 4650 0    50   ~ 0
GPIO14(5)
Text Notes 3700 4750 0    50   ~ 0
GPIO12(6)
Wire Wire Line
	3200 4050 3200 4150
Connection ~ 3200 4150
Wire Wire Line
	3200 3750 3200 3650
Wire Wire Line
	2600 4150 3200 4150
$Comp
L power:GND #PWR021
U 1 1 5A9A7E79
P 8350 4950
F 0 "#PWR021" H 8350 4700 50  0001 C CNN
F 1 "GND" H 8355 4777 50  0000 C CNN
F 2 "" H 8350 4950 50  0001 C CNN
F 3 "" H 8350 4950 50  0001 C CNN
	1    8350 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5A9A7FEE
P 8350 4700
F 0 "D1" V 8388 4583 50  0000 R CNN
F 1 "LED" V 8297 4583 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm" H 8350 4700 50  0001 C CNN
F 3 "~" H 8350 4700 50  0001 C CNN
	1    8350 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4850 8350 4950
Wire Wire Line
	8350 4550 8350 4500
Text Label 7700 4500 0    50   ~ 0
LED
$Comp
L Device:R R6
U 1 1 5A9DB11E
P 8100 4500
F 0 "R6" V 8050 4700 50  0000 C CNN
F 1 "220" V 8100 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8030 4500 50  0001 C CNN
F 3 "" H 8100 4500 50  0001 C CNN
	1    8100 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 4500 7950 4500
Wire Wire Line
	8250 4500 8350 4500
Wire Wire Line
	7500 4200 7700 4200
Wire Wire Line
	7500 4300 7700 4300
Text Label 7700 4300 0    50   ~ 0
MTP
Text Label 7700 4200 0    50   ~ 0
OUT
Text Label 2600 3650 0    50   ~ 0
MLP
Text Label 3200 3650 0    50   ~ 0
MTP
Text Notes 2550 3550 0    50   ~ 0
GPIO13(7)
Text Notes 3150 3550 0    50   ~ 0
GPIO4(2)
Wire Wire Line
	5100 4600 5000 4600
Text Label 5000 4600 0    50   ~ 0
MLP
$Comp
L esp-12_07v2_08v2-rescue-esp8266_dht22:ESP-12_07v2_08v2-RESCUE-esp8266_dht22 U2
U 1 1 5A6CB719
P 6300 4350
F 0 "U2" H 6300 5093 60  0000 C CNN
F 1 "ESP-12_07v2" H 6300 4987 60  0000 C CNN
F 2 "lib:ESP-07v2" H 6300 4881 60  0000 C CNN
F 3 "" H 6300 4350 60  0000 C CNN
	1    6300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4450 3250 4450
Wire Wire Line
	3200 4450 3200 4650
Wire Wire Line
	3250 4350 3200 4350
Wire Wire Line
	3200 4150 3200 4350
Wire Wire Line
	2650 4350 2600 4350
Wire Wire Line
	2600 4150 2600 4350
Wire Wire Line
	2650 4450 2600 4450
Wire Wire Line
	2600 4450 2600 4750
$EndSCHEMATC
