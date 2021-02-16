EESchema Schematic File Version 4
EELAYER 30 0
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
Wire Wire Line
	10500 750  10600 750 
Wire Wire Line
	10500 850  10600 850 
Wire Wire Line
	10500 950  10600 950 
Wire Wire Line
	10500 1050 10600 1050
Wire Wire Line
	10500 1150 10600 1150
Wire Wire Line
	10500 1250 10600 1250
Wire Wire Line
	10500 1350 10600 1350
Wire Wire Line
	10500 1550 10600 1550
Wire Wire Line
	10500 2550 10600 2550
Wire Wire Line
	10500 2450 10600 2450
Wire Wire Line
	10500 2350 10600 2350
Wire Wire Line
	10500 1650 10600 1650
Wire Wire Line
	10500 1450 10600 1450
Text GLabel 2000 7300 2    50   Input ~ 0
GND
Wire Wire Line
	1900 7300 2000 7300
Wire Wire Line
	2000 7050 1900 7050
Connection ~ 1900 7050
Wire Wire Line
	1900 7050 1900 7300
Wire Wire Line
	2000 6950 1900 6950
Wire Wire Line
	1900 6950 1900 7050
Text GLabel 1450 5150 2    50   Input ~ 0
GND
Text GLabel 1300 4000 0    50   Input ~ 0
VCC
$Comp
L Device:L L1
U 1 1 5C783F3A
P 1350 4300
F 0 "L1" H 1309 4254 50  0000 R CNN
F 1 "10uH" H 1309 4345 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - Inductor 10.16mm" H 1350 4300 50  0001 C CNN
F 3 "~" H 1350 4300 50  0001 C CNN
	1    1350 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 4000 1350 4000
Wire Wire Line
	1350 4000 1350 4150
Wire Wire Line
	2000 5050 1800 5050
Wire Wire Line
	1800 5050 1800 4550
Wire Wire Line
	2000 4750 1900 4750
Connection ~ 1350 4000
Text GLabel 4000 4750 2    50   Input ~ 0
328_D8
Text GLabel 4000 4850 2    50   Input ~ 0
328_D9
Text GLabel 4000 4950 2    50   Input ~ 0
328_D10
Text GLabel 4000 5050 2    50   Input ~ 0
328_D11
Text GLabel 4000 5150 2    50   Input ~ 0
328_D12
Text GLabel 4000 5250 2    50   Input ~ 0
328_D13
Text GLabel 4000 5600 2    50   Input ~ 0
328_A0
Text GLabel 4000 5700 2    50   Input ~ 0
328_A1
Text GLabel 4000 5800 2    50   Input ~ 0
328_A2
Text GLabel 4000 5900 2    50   Input ~ 0
328_A3
Text GLabel 4000 6000 2    50   Input ~ 0
328_A4
Text GLabel 4000 6100 2    50   Input ~ 0
328_A5
Text GLabel 4000 6200 2    50   Input ~ 0
328_RESET
Text GLabel 4000 6350 2    50   Input ~ 0
328_RXD
Text GLabel 4000 6450 2    50   Input ~ 0
328_TXD
Text GLabel 4000 6550 2    50   Input ~ 0
328_D2
Text GLabel 4000 6650 2    50   Input ~ 0
328_D3
Text GLabel 4000 6750 2    50   Input ~ 0
328_D4
Text GLabel 4000 6850 2    50   Input ~ 0
328_D5
Text GLabel 4000 6950 2    50   Input ~ 0
328_D6
Text GLabel 4000 7050 2    50   Input ~ 0
328_D7
Wire Wire Line
	3900 7050 4000 7050
Wire Wire Line
	3900 6950 4000 6950
Wire Wire Line
	3900 6850 4000 6850
Wire Wire Line
	3900 6750 4000 6750
Wire Wire Line
	3900 6650 4000 6650
Wire Wire Line
	3900 6550 4000 6550
Wire Wire Line
	3900 6450 4000 6450
Wire Wire Line
	3900 6350 4000 6350
Wire Wire Line
	3900 6200 4000 6200
Wire Wire Line
	3900 6100 4000 6100
Wire Wire Line
	3900 6000 4000 6000
Wire Wire Line
	3900 5900 4000 5900
Wire Wire Line
	3900 5800 4000 5800
Wire Wire Line
	3900 5600 4000 5600
Wire Wire Line
	3900 5250 4000 5250
Wire Wire Line
	3900 5150 4000 5150
Wire Wire Line
	3900 5050 4000 5050
Wire Wire Line
	3900 4850 4000 4850
Wire Wire Line
	3900 4750 4000 4750
Wire Wire Line
	1350 5000 1350 5150
Wire Wire Line
	1350 5150 1450 5150
Text GLabel 9000 5000 1    50   Input ~ 0
VCC
Text GLabel 9450 5000 1    50   Input ~ 0
LED_1
$Comp
L Device:R R9
U 1 1 5CAF3F8A
P 9450 5250
F 0 "R9" H 9520 5296 50  0000 L CNN
F 1 "1000" H 9520 5205 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 9380 5250 50  0001 C CNN
F 3 "~" H 9450 5250 50  0001 C CNN
	1    9450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5CAF4038
P 9000 5250
F 0 "R8" H 9070 5296 50  0000 L CNN
F 1 "1000" H 9070 5205 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 8930 5250 50  0001 C CNN
F 3 "~" H 9000 5250 50  0001 C CNN
	1    9000 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5CAFC263
P 9000 5650
F 0 "D5" V 9038 5532 50  0000 R CNN
F 1 "LED" V 8947 5532 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 9000 5650 50  0001 C CNN
F 3 "~" H 9000 5650 50  0001 C CNN
	1    9000 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5CAFC3AD
P 9450 5650
F 0 "D1" V 9488 5532 50  0000 R CNN
F 1 "LED" V 9397 5532 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 9450 5650 50  0001 C CNN
F 3 "~" H 9450 5650 50  0001 C CNN
	1    9450 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9000 5800 9000 6000
Wire Wire Line
	9000 5400 9000 5500
Wire Wire Line
	9450 5400 9450 5500
Wire Wire Line
	9000 5000 9000 5100
Wire Wire Line
	9450 5000 9450 5100
Text GLabel 1200 950  1    50   Input ~ 0
GND
Text GLabel 1450 950  1    50   Input ~ 0
VCC
Text GLabel 10600 2150 2    50   Input ~ 0
328_A0
Text GLabel 10600 2250 2    50   Input ~ 0
328_A1
Text GLabel 10600 2350 2    50   Input ~ 0
328_A2
Text GLabel 10600 2450 2    50   Input ~ 0
328_A3
Text GLabel 10600 2550 2    50   Input ~ 0
328_A4
Text GLabel 10600 2650 2    50   Input ~ 0
328_A5
Wire Wire Line
	10500 2650 10600 2650
Text GLabel 10600 750  2    50   Input ~ 0
328_RXD
Text GLabel 10600 850  2    50   Input ~ 0
328_TXD
Text GLabel 10600 950  2    50   Input ~ 0
328_D2
Text GLabel 10600 1050 2    50   Input ~ 0
328_D3
Text GLabel 10600 1150 2    50   Input ~ 0
328_D4
Text GLabel 10600 1250 2    50   Input ~ 0
328_D5
Text GLabel 10600 1350 2    50   Input ~ 0
328_D6
Text GLabel 10600 1450 2    50   Input ~ 0
328_D7
Text GLabel 10600 1550 2    50   Input ~ 0
328_D8
Text GLabel 10600 1650 2    50   Input ~ 0
328_D9
Text GLabel 10500 1250 0    50   Input ~ 0
SPEAKER
$Comp
L Device:Speaker LS1
U 1 1 5C743269
P 5750 5250
F 0 "LS1" H 5920 5246 50  0000 L CNN
F 1 "Speaker" H 5920 5155 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Speaker_Large_Fuet" H 5750 5050 50  0001 C CNN
F 3 "~" H 5740 5200 50  0001 C CNN
	1    5750 5250
	-1   0    0    1   
$EndComp
Text GLabel 6500 5250 2    50   Input ~ 0
SPEAKER
Text GLabel 6500 5150 2    50   Input ~ 0
GND
Wire Wire Line
	3900 4950 4000 4950
Wire Wire Line
	3900 5700 4000 5700
$Comp
L Device:R R7
U 1 1 5CA99D3D
P 6200 5250
F 0 "R7" V 5993 5250 50  0000 C CNN
F 1 "100" V 6084 5250 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 6130 5250 50  0001 C CNN
F 3 "~" H 6200 5250 50  0001 C CNN
	1    6200 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5D78C87E
P 1700 950
F 0 "R1" V 1907 950 50  0000 C CNN
F 1 "1000" V 1816 950 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 950 50  0001 C CNN
F 3 "~" H 1700 950 50  0001 C CNN
	1    1700 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 950  1450 950 
$Comp
L Device:R R3
U 1 1 5D7B8295
P 1700 1850
F 0 "R3" V 1907 1850 50  0000 C CNN
F 1 "1000" V 1816 1850 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 1850 50  0001 C CNN
F 3 "~" H 1700 1850 50  0001 C CNN
	1    1700 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D7C5C3D
P 1700 1400
F 0 "R2" V 1907 1400 50  0000 C CNN
F 1 "1000" V 1816 1400 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 1400 50  0001 C CNN
F 3 "~" H 1700 1400 50  0001 C CNN
	1    1700 1400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 1850 1450 1850
Wire Wire Line
	1550 1400 1450 1400
Connection ~ 1450 1400
Wire Wire Line
	6500 5250 6350 5250
Text GLabel 10600 1750 2    50   Input ~ 0
328_D10
Text GLabel 10600 1850 2    50   Input ~ 0
328_D11
Text GLabel 10600 1950 2    50   Input ~ 0
328_D12
Text GLabel 10600 2050 2    50   Input ~ 0
328_D13
Wire Wire Line
	10500 2150 10600 2150
Wire Wire Line
	10500 2250 10600 2250
Wire Wire Line
	10500 1750 10600 1750
Wire Wire Line
	10500 1950 10600 1950
Wire Wire Line
	10500 2050 10600 2050
Wire Wire Line
	10500 1850 10600 1850
Text GLabel 4950 1400 0    50   Input ~ 0
Switch_1
Wire Wire Line
	4950 1400 5100 1400
$Comp
L Synth-rescue:ATMEGA328P-PU-atmel U1
U 1 1 5D6F7230
P 2900 5850
F 0 "U1" H 2950 7217 50  0000 C CNN
F 1 "ATMEGA328P-PU" H 2950 7126 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - ATMEGA328P-PU" H 2900 5850 50  0001 C CIN
F 3 "http://www.atmel.com/images/atmel-8271-8-bit-avr-microcontroller-atmega48a-48pa-88a-88pa-168a-168pa-328-328p_datasheet.pdf" H 2900 5850 50  0001 C CNN
	1    2900 5850
	1    0    0    -1  
$EndComp
Text GLabel 1300 5350 0    50   Input ~ 0
VCC
$Comp
L Device:R R4
U 1 1 5D72CC88
P 1700 2300
F 0 "R4" V 1907 2300 50  0000 C CNN
F 1 "1000" V 1816 2300 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 2300 50  0001 C CNN
F 3 "~" H 1700 2300 50  0001 C CNN
	1    1700 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 2300 1450 2300
$Comp
L Device:R R6
U 1 1 5D72CC8F
P 1700 3200
F 0 "R6" V 1907 3200 50  0000 C CNN
F 1 "1000" V 1816 3200 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 3200 50  0001 C CNN
F 3 "~" H 1700 3200 50  0001 C CNN
	1    1700 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D72CC95
P 1700 2750
F 0 "R5" V 1907 2750 50  0000 C CNN
F 1 "1000" V 1816 2750 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 1630 2750 50  0001 C CNN
F 3 "~" H 1700 2750 50  0001 C CNN
	1    1700 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1550 3200 1450 3200
Wire Wire Line
	1550 2750 1450 2750
Connection ~ 1450 2750
Connection ~ 1450 2300
Connection ~ 1450 1850
Text GLabel 10500 2650 0    50   Input ~ 0
POT_1
Text GLabel 10500 2550 0    50   Input ~ 0
POT_2
Text GLabel 10500 2450 0    50   Input ~ 0
POT_3
Text GLabel 10500 2350 0    50   Input ~ 0
POT_4
Text GLabel 10500 2150 0    50   Input ~ 0
POT_5
Text GLabel 10500 2250 0    50   Input ~ 0
POT_6
Text GLabel 4950 1950 0    50   Input ~ 0
Switch_2
Wire Wire Line
	4950 1950 5100 1950
Text GLabel 4950 2500 0    50   Input ~ 0
Switch_3
Wire Wire Line
	4950 2500 5100 2500
Text GLabel 4950 3050 0    50   Input ~ 0
Switch_4
Wire Wire Line
	4950 3050 5100 3050
Text GLabel 10500 2050 0    50   Input ~ 0
Switch_1
Text GLabel 10500 1750 0    50   Input ~ 0
Switch_4
Text GLabel 10500 1850 0    50   Input ~ 0
Switch_3
Text GLabel 10500 1950 0    50   Input ~ 0
Switch_2
Text GLabel 9900 5000 1    50   Input ~ 0
LED_2
$Comp
L Device:R R10
U 1 1 5D861E22
P 9900 5250
F 0 "R10" H 9970 5296 50  0000 L CNN
F 1 "1000" H 9970 5205 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 9830 5250 50  0001 C CNN
F 3 "~" H 9900 5250 50  0001 C CNN
	1    9900 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5D861E28
P 9900 5650
F 0 "D2" V 9938 5532 50  0000 R CNN
F 1 "LED" V 9847 5532 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 9900 5650 50  0001 C CNN
F 3 "~" H 9900 5650 50  0001 C CNN
	1    9900 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9900 5400 9900 5500
Wire Wire Line
	9900 5000 9900 5100
Text GLabel 10350 5000 1    50   Input ~ 0
LED_3
$Comp
L Device:R R11
U 1 1 5D86AC3A
P 10350 5250
F 0 "R11" H 10420 5296 50  0000 L CNN
F 1 "1000" H 10420 5205 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 10280 5250 50  0001 C CNN
F 3 "~" H 10350 5250 50  0001 C CNN
	1    10350 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5D86AC40
P 10350 5650
F 0 "D3" V 10388 5532 50  0000 R CNN
F 1 "LED" V 10297 5532 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 10350 5650 50  0001 C CNN
F 3 "~" H 10350 5650 50  0001 C CNN
	1    10350 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 5400 10350 5500
Wire Wire Line
	10350 5000 10350 5100
Text GLabel 10800 5000 1    50   Input ~ 0
LED_4
$Comp
L Device:R R12
U 1 1 5D873DA8
P 10800 5250
F 0 "R12" H 10870 5296 50  0000 L CNN
F 1 "1000" H 10870 5205 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 10730 5250 50  0001 C CNN
F 3 "~" H 10800 5250 50  0001 C CNN
	1    10800 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5D873DAE
P 10800 5650
F 0 "D4" V 10838 5532 50  0000 R CNN
F 1 "LED" V 10747 5532 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:Schematic - LED 5mm(2.56P) 003" H 10800 5650 50  0001 C CNN
F 3 "~" H 10800 5650 50  0001 C CNN
	1    10800 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10800 5400 10800 5500
Wire Wire Line
	10800 5000 10800 5100
Wire Wire Line
	10800 5800 10800 6000
Wire Wire Line
	10800 6000 10350 6000
Wire Wire Line
	9450 5800 9450 6000
Connection ~ 9450 6000
Wire Wire Line
	9450 6000 9000 6000
Wire Wire Line
	9900 5800 9900 6000
Connection ~ 9900 6000
Wire Wire Line
	9900 6000 9450 6000
Wire Wire Line
	10350 5800 10350 6000
Connection ~ 10350 6000
Wire Wire Line
	10350 6000 9900 6000
Text GLabel 10500 1650 0    50   Input ~ 0
LED_1
Text GLabel 10500 1350 0    50   Input ~ 0
LED_2
Text GLabel 10500 1450 0    50   Input ~ 0
LED_3
Text GLabel 10500 1550 0    50   Input ~ 0
LED_4
Connection ~ 9000 6000
Connection ~ 8050 5650
Wire Wire Line
	8050 6150 8050 5650
Wire Wire Line
	7800 5650 8050 5650
Wire Wire Line
	8850 6000 9000 6000
Text GLabel 8850 6000 0    50   Input ~ 0
GND
Wire Wire Line
	7800 5200 7800 5650
Wire Wire Line
	8050 5200 8050 5300
Wire Wire Line
	7350 6150 7550 6150
Wire Wire Line
	7950 6150 8050 6150
Wire Wire Line
	8050 5650 8050 5600
$Comp
L Device:R R13
U 1 1 5CAA3F9C
P 8050 5450
F 0 "R13" H 8120 5496 50  0000 L CNN
F 1 "1000" H 8120 5405 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Resistor 7.62mm" V 7980 5450 50  0001 C CNN
F 3 "~" H 8050 5450 50  0001 C CNN
	1    8050 5450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5CA9C292
P 7750 6150
F 0 "SW5" H 7750 6435 50  0000 C CNN
F 1 "SW_Push" H 7750 6344 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic - Push Button 6.5x4.5" H 7750 6350 50  0001 C CNN
F 3 "" H 7750 6350 50  0001 C CNN
	1    7750 6150
	1    0    0    -1  
$EndComp
Text GLabel 7350 6150 0    50   Input ~ 0
GND
Text GLabel 8050 5200 1    50   Input ~ 0
VCC
Text GLabel 7800 5200 1    50   Input ~ 0
328_RESET
Text Notes 6000 1450 0    50   ~ 0
Beat 1 Note\n
Text Notes 6000 2000 0    50   ~ 0
Beat 2 Note
Text Notes 6000 2550 0    50   ~ 0
Beat 3 Note
Text Notes 6000 3100 0    50   ~ 0
Beat 4 Note
Wire Wire Line
	1300 5350 1350 5350
$Comp
L Switch:SW_Push SW1
U 1 1 5FC89F12
P 5300 1400
F 0 "SW1" H 5300 1685 50  0000 C CNN
F 1 "SW_Push" H 5300 1594 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 5300 1600 50  0001 C CNN
F 3 "~" H 5300 1600 50  0001 C CNN
	1    5300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1400 5600 1400
Text GLabel 5600 1400 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW2
U 1 1 5FCCE133
P 5300 1950
F 0 "SW2" H 5300 2235 50  0000 C CNN
F 1 "SW_Push" H 5300 2144 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 5300 2150 50  0001 C CNN
F 3 "~" H 5300 2150 50  0001 C CNN
	1    5300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1950 5600 1950
Text GLabel 5600 1950 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW3
U 1 1 5FCD4BD7
P 5300 2500
F 0 "SW3" H 5300 2785 50  0000 C CNN
F 1 "SW_Push" H 5300 2694 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 5300 2700 50  0001 C CNN
F 3 "~" H 5300 2700 50  0001 C CNN
	1    5300 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2500 5600 2500
Text GLabel 5600 2500 2    50   Input ~ 0
GND
$Comp
L Switch:SW_Push SW4
U 1 1 5FCDB943
P 5300 3050
F 0 "SW4" H 5300 3335 50  0000 C CNN
F 1 "SW_Push" H 5300 3244 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:Schematic_-_Button_Labeled" H 5300 3250 50  0001 C CNN
F 3 "~" H 5300 3250 50  0001 C CNN
	1    5300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3050 5600 3050
Text GLabel 5600 3050 2    50   Input ~ 0
GND
Wire Wire Line
	1450 2750 1450 3200
Wire Wire Line
	1450 2300 1450 2750
Wire Wire Line
	1450 2300 1450 1850
Wire Wire Line
	1450 1400 1450 1850
Wire Wire Line
	1450 950  1450 1400
Text Notes 3050 3400 0    50   ~ 0
Beat Spacing\n
Text Notes 3050 2950 0    50   ~ 0
Beat Duration\n
Text Notes 3050 2500 0    50   ~ 0
Beat 4 Note
Wire Wire Line
	2450 3350 2650 3350
Wire Wire Line
	2450 2900 2650 2900
Wire Wire Line
	2450 2450 2650 2450
Text GLabel 2650 3350 2    50   Input ~ 0
POT_6
Text GLabel 2650 2900 2    50   Input ~ 0
POT_5
Text GLabel 2650 2450 2    50   Input ~ 0
POT_4
$Comp
L Device:R_POT RV6
U 1 1 5D72CC71
P 2300 3350
F 0 "RV6" H 2230 3396 50  0000 R CNN
F 1 "R_POT" H 2230 3305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 3350 50  0001 C CNN
F 3 "~" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV5
U 1 1 5D72CC6B
P 2300 2900
F 0 "RV5" H 2230 2946 50  0000 R CNN
F 1 "R_POT" H 2230 2855 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 2900 50  0001 C CNN
F 3 "~" H 2300 2900 50  0001 C CNN
	1    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5D72CC65
P 2300 2450
F 0 "RV4" H 2230 2496 50  0000 R CNN
F 1 "R_POT" H 2230 2405 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 2450 50  0001 C CNN
F 3 "~" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
Text Notes 3050 2050 0    50   ~ 0
Beat 3 Note
Text Notes 3050 1600 0    50   ~ 0
Beat 2 Note
Text Notes 3050 1150 0    50   ~ 0
Beat 1 Note\n
Wire Wire Line
	2450 2000 2650 2000
Wire Wire Line
	2450 1550 2650 1550
Wire Wire Line
	2450 1100 2650 1100
Text GLabel 2650 2000 2    50   Input ~ 0
POT_3
Text GLabel 2650 1550 2    50   Input ~ 0
POT_2
Text GLabel 2650 1100 2    50   Input ~ 0
POT_1
$Comp
L Device:R_POT RV3
U 1 1 5CCC1F00
P 2300 2000
F 0 "RV3" H 2230 2046 50  0000 R CNN
F 1 "R_POT" H 2230 1955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 2000 50  0001 C CNN
F 3 "~" H 2300 2000 50  0001 C CNN
	1    2300 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5CCB8FFA
P 2300 1550
F 0 "RV2" H 2230 1596 50  0000 R CNN
F 1 "R_POT" H 2230 1505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 1550 50  0001 C CNN
F 3 "~" H 2300 1550 50  0001 C CNN
	1    2300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5CCAFDF3
P 2300 1100
F 0 "RV1" H 2230 1146 50  0000 R CNN
F 1 "R_POT" H 2230 1055 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK09L_Single_Vertical" H 2300 1100 50  0001 C CNN
F 3 "~" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 950  1200 1250
Wire Wire Line
	1850 950  2300 950 
Wire Wire Line
	1200 1250 2300 1250
Connection ~ 1200 1250
Wire Wire Line
	1200 1250 1200 1700
Wire Wire Line
	1200 1700 2300 1700
Connection ~ 1200 1700
Wire Wire Line
	1200 1700 1200 2150
Wire Wire Line
	1200 2150 2300 2150
Connection ~ 1200 2150
Wire Wire Line
	1200 2150 1200 2600
Wire Wire Line
	1200 2600 2300 2600
Connection ~ 1200 2600
Wire Wire Line
	1200 2600 1200 3050
Wire Wire Line
	1850 2300 2300 2300
Wire Wire Line
	1850 1850 2300 1850
Wire Wire Line
	1850 1400 2300 1400
Wire Wire Line
	1200 3500 2300 3500
Wire Wire Line
	1200 3050 2300 3050
Connection ~ 1200 3050
Wire Wire Line
	1200 3050 1200 3500
Wire Wire Line
	1850 2750 2300 2750
Wire Wire Line
	1850 3200 2300 3200
$Comp
L Device:C C1
U 1 1 5FD4DA53
P 1350 4850
F 0 "C1" H 1465 4896 50  0000 L CNN
F 1 "0.1uF" H 1465 4805 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Capacitor 5.0mm" H 1388 4700 50  0001 C CNN
F 3 "~" H 1350 4850 50  0001 C CNN
	1    1350 4850
	1    0    0    -1  
$EndComp
Text GLabel 1450 5900 2    50   Input ~ 0
GND
Wire Wire Line
	1350 5750 1350 5900
Wire Wire Line
	1350 5900 1450 5900
$Comp
L Device:C C2
U 1 1 5FD64B7A
P 1350 5600
F 0 "C2" H 1465 5646 50  0000 L CNN
F 1 "0.1uF" H 1465 5555 50  0000 L CNN
F 2 "CCC-Schematic-Footprints:Schematic - Capacitor 5.0mm" H 1388 5450 50  0001 C CNN
F 3 "~" H 1350 5600 50  0001 C CNN
	1    1350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4550 1350 4550
Wire Wire Line
	1350 4550 1350 4450
Wire Wire Line
	1350 4700 1350 4550
Connection ~ 1350 4550
Wire Wire Line
	1900 4000 1900 4750
Wire Wire Line
	1350 4000 1900 4000
Wire Wire Line
	1350 5450 1350 5350
Connection ~ 1350 5350
Wire Wire Line
	1350 5350 2000 5350
Wire Wire Line
	5950 5150 6500 5150
Wire Wire Line
	5950 5250 6050 5250
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FDF695E
P 7300 1750
F 0 "J1" H 7218 1425 50  0000 C CNN
F 1 "Conn_01x02" H 7218 1516 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:9V_Battery_Terminal" H 7300 1750 50  0001 C CNN
F 3 "~" H 7300 1750 50  0001 C CNN
	1    7300 1750
	-1   0    0    1   
$EndComp
Text GLabel 7700 1650 2    50   Input ~ 0
GND
Wire Wire Line
	8600 2500 8600 2400
Text GLabel 9050 2100 2    50   Input ~ 0
VCC
Wire Wire Line
	9050 2100 8900 2100
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5FDF569E
P 8600 2100
F 0 "U2" H 8600 2342 50  0000 C CNN
F 1 "L7805" H 8600 2251 50  0000 C CNN
F 2 "CCC-Schematic-Footprints:MOSFET_TO-220-3_Horizontal_TabDown" H 8625 1950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 8600 2050 50  0001 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2100 8300 2100
Wire Wire Line
	7700 1650 7500 1650
Text GLabel 7950 2500 0    50   Input ~ 0
GND
Wire Wire Line
	7950 2500 8600 2500
$Comp
L Switch:SW_SPDT SW6
U 1 1 5FF284F6
P 7800 2100
F 0 "SW6" H 7800 2385 50  0000 C CNN
F 1 "SW_SPDT" H 7800 2294 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7800 2100 50  0001 C CNN
F 3 "~" H 7800 2100 50  0001 C CNN
	1    7800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2000 8000 2100
Wire Wire Line
	7600 2100 7500 2100
Wire Wire Line
	7500 1750 7500 2100
$Comp
L Connector:AVR-ISP-6 J2
U 1 1 5FF75AE7
P 5850 4100
F 0 "J2" H 5521 4196 50  0000 R CNN
F 1 "AVR-ISP-6" H 5521 4105 50  0000 R CNN
F 2 "CCC-Schematic-Footprints:PinSocket_2x03_P2.54mm_Vertical" V 5600 4150 50  0001 C CNN
F 3 " ~" H 4575 3550 50  0001 C CNN
	1    5850 4100
	1    0    0    -1  
$EndComp
Text GLabel 6400 4200 2    50   Input ~ 0
328_RESET
Text GLabel 6400 3900 2    50   Input ~ 0
328_D12
Text GLabel 6400 4000 2    50   Input ~ 0
328_D11
Text GLabel 6400 4100 2    50   Input ~ 0
328_D13
Text GLabel 5700 3500 0    50   Input ~ 0
VCC
Wire Wire Line
	5700 3500 5750 3500
Wire Wire Line
	5750 3500 5750 3600
Text GLabel 5700 4650 0    50   Input ~ 0
GND
Wire Wire Line
	5700 4650 5750 4650
Wire Wire Line
	5750 4650 5750 4500
Wire Wire Line
	6250 4200 6400 4200
Wire Wire Line
	6250 4100 6400 4100
Wire Wire Line
	6250 4000 6400 4000
Wire Wire Line
	6250 3900 6400 3900
$EndSCHEMATC
