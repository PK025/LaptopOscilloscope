EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Oscilloscope"
Date "2019-11-04"
Rev "1.05"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Two channel USB oscilloscope."
$EndDescr
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5DBB46A3
P 1150 1750
F 0 "J1" H 1078 1988 50  0000 C CNN
F 1 "BNC" H 1078 1897 50  0000 C CNN
F 2 "" H 1150 1750 50  0001 C CNN
F 3 " ~" H 1150 1750 50  0001 C CNN
	1    1150 1750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5DBB6AAD
P 1150 1950
F 0 "#PWR0101" H 1150 1700 50  0001 C CNN
F 1 "GND" H 1155 1777 50  0000 C CNN
F 2 "" H 1150 1950 50  0001 C CNN
F 3 "" H 1150 1950 50  0001 C CNN
	1    1150 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DBB4763
P 1550 1750
F 0 "C1" V 1700 1750 50  0000 C CNN
F 1 "22n" V 1800 1750 50  0000 C CNN
F 2 "" H 1588 1600 50  0001 C CNN
F 3 "~" H 1550 1750 50  0001 C CNN
	1    1550 1750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5DBB6805
P 1550 1500
F 0 "SW1" H 1550 1650 50  0000 C CNN
F 1 "SW_SPST" H 1550 1250 50  0001 C CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "~" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1750 1350 1500
Wire Wire Line
	1350 1750 1400 1750
Wire Wire Line
	2450 2750 2050 2750
Text Label 2050 2750 0    50   ~ 0
Offset
$Comp
L Device:C C7
U 1 1 5DBC19E5
P 2450 2900
F 0 "C7" H 2550 2850 50  0000 L CNN
F 1 "22n" H 2550 2950 50  0000 L CNN
F 2 "" H 2488 2750 50  0001 C CNN
F 3 "~" H 2450 2900 50  0001 C CNN
	1    2450 2900
	-1   0    0    1   
$EndComp
Connection ~ 2450 2750
$Comp
L power:GND #PWR0102
U 1 1 5DBC1F9A
P 2450 3050
F 0 "#PWR0102" H 2450 2800 50  0001 C CNN
F 1 "GND" H 2455 2877 50  0000 C CNN
F 2 "" H 2450 3050 50  0001 C CNN
F 3 "" H 2450 3050 50  0001 C CNN
	1    2450 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5DBC4EFF
P 2800 2450
F 0 "D2" V 2800 2529 50  0000 L CNN
F 1 "D_Schottky" V 2845 2529 50  0001 L CNN
F 2 "" H 2800 2450 50  0001 C CNN
F 3 "~" H 2800 2450 50  0001 C CNN
	1    2800 2450
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5DBC641F
P 2800 2050
F 0 "D1" V 2800 2129 50  0000 L CNN
F 1 "D_Schottky" V 2845 2129 50  0001 L CNN
F 2 "" H 2800 2050 50  0001 C CNN
F 3 "~" H 2800 2050 50  0001 C CNN
	1    2800 2050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DBC73E6
P 1750 2650
F 0 "#PWR0103" H 1750 2400 50  0001 C CNN
F 1 "GND" H 1755 2477 50  0000 C CNN
F 2 "" H 1750 2650 50  0001 C CNN
F 3 "" H 1750 2650 50  0001 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DBC8DAA
P 1750 2450
F 0 "C3" H 1650 2500 50  0000 R CNN
F 1 "47p" H 1650 2400 50  0000 R CNN
F 2 "" H 1788 2300 50  0001 C CNN
F 3 "~" H 1750 2450 50  0001 C CNN
	1    1750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2250 2100 2250
Wire Wire Line
	1750 2300 1750 2250
$Comp
L Device:C_Variable C5
U 1 1 5DBCBAFD
P 2100 2000
F 0 "C5" H 2200 2050 50  0000 L CNN
F 1 "10..60p" H 2200 1950 50  0000 L CNN
F 2 "" H 2100 2000 50  0001 C CNN
F 3 "~" H 2100 2000 50  0001 C CNN
	1    2100 2000
	1    0    0    -1  
$EndComp
Text Notes 750  900  0    79   ~ 16
Input Stage
Wire Wire Line
	2800 1850 2800 1900
Wire Wire Line
	1750 2600 1750 2650
Wire Wire Line
	2800 2600 2800 2650
Text Notes 3500 900  0    79   ~ 16
Gain Stage
$Comp
L Amplifier_Operational:LT1493 U2
U 1 1 5DC12B4B
P 3950 2350
F 0 "U2" H 3950 2550 50  0000 C CNN
F 1 "LT1493" H 3950 2626 50  0001 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LT1493 U2
U 2 1 5DC13EF8
P 5250 1400
F 0 "U2" H 5250 1675 50  0000 C CNN
F 1 "LT1493" H 5250 1676 50  0001 C CNN
F 2 "" H 5250 1400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5250 1400 50  0001 C CNN
	2    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LT1493 U2
U 5 1 5DC15093
P 4200 3550
F 0 "U2" H 4158 3596 50  0000 L CNN
F 1 "LT1493" H 4158 3505 50  0000 L CNN
F 2 "" H 4200 3550 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 4200 3550 50  0001 C CNN
	5    4200 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5DC16147
P 4100 3150
F 0 "#PWR0109" H 4100 3000 50  0001 C CNN
F 1 "+5V" H 4115 3323 50  0000 C CNN
F 2 "" H 4100 3150 50  0001 C CNN
F 3 "" H 4100 3150 50  0001 C CNN
	1    4100 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DC1691D
P 4100 3950
F 0 "#PWR0110" H 4100 3700 50  0001 C CNN
F 1 "GND" H 4105 3777 50  0000 C CNN
F 2 "" H 4100 3950 50  0001 C CNN
F 3 "" H 4100 3950 50  0001 C CNN
	1    4100 3950
	1    0    0    -1  
$EndComp
Text Notes 750  5950 0    79   ~ 16
Offset DAC
$Comp
L Device:C C9
U 1 1 5DC17054
P 3850 3550
F 0 "C9" H 3750 3600 50  0000 R CNN
F 1 "100n" H 3750 3500 50  0000 R CNN
F 2 "" H 3888 3400 50  0001 C CNN
F 3 "~" H 3850 3550 50  0001 C CNN
	1    3850 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1300 4600 1300
Wire Wire Line
	5550 1400 5600 1400
Wire Wire Line
	5550 2100 5600 2100
Text Label 6650 1400 2    50   ~ 0
ADC1
Text Label 6650 2100 2    50   ~ 0
ADC2
Wire Wire Line
	5600 1700 5600 1400
Wire Wire Line
	4900 1700 4900 1500
Wire Wire Line
	4900 1500 4950 1500
Wire Wire Line
	4250 2350 4300 2350
Wire Wire Line
	3600 2450 3650 2450
Wire Wire Line
	4300 2650 4300 2350
Wire Wire Line
	4300 2350 4600 2350
Text Notes 5450 1950 2    49   ~ 0
Gain: 10
$Comp
L Amplifier_Operational:LT1493 U2
U 3 1 5DC483FD
P 5250 2100
F 0 "U2" H 5250 2375 50  0000 C CNN
F 1 "LT1493" H 5250 2376 50  0001 C CNN
F 2 "" H 5250 2100 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5250 2100 50  0001 C CNN
	3    5250 2100
	1    0    0    -1  
$EndComp
Text Notes 5450 1250 2    49   ~ 0
Gain: 1
Wire Wire Line
	5400 2450 5600 2450
Wire Wire Line
	5100 2450 4900 2450
Wire Wire Line
	4900 2450 4900 2200
$Comp
L Device:R R5
U 1 1 5DC4EAE4
P 4900 2700
F 0 "R5" H 4970 2746 50  0000 L CNN
F 1 "10k" H 4970 2655 50  0000 L CNN
F 2 "" V 4830 2700 50  0001 C CNN
F 3 "~" H 4900 2700 50  0001 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5DC4EAEA
P 4900 2900
F 0 "#PWR0113" H 4900 2650 50  0001 C CNN
F 1 "GND" H 4905 2727 50  0000 C CNN
F 2 "" H 4900 2900 50  0001 C CNN
F 3 "" H 4900 2900 50  0001 C CNN
	1    4900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2850 4900 2900
Wire Wire Line
	4900 2550 4900 2450
Connection ~ 4900 2450
$Comp
L Device:R R7
U 1 1 5DC4EAF3
P 5250 2450
F 0 "R7" V 5350 2450 50  0000 C CNN
F 1 "90k" V 5450 2450 50  0000 C CNN
F 2 "" V 5180 2450 50  0001 C CNN
F 3 "~" H 5250 2450 50  0001 C CNN
	1    5250 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 2200 4950 2200
Wire Wire Line
	5600 2450 5600 2100
$Comp
L power:GND #PWR0114
U 1 1 5DC5C797
P 2800 2650
F 0 "#PWR0114" H 2800 2400 50  0001 C CNN
F 1 "GND" H 2805 2477 50  0000 C CNN
F 2 "" H 2800 2650 50  0001 C CNN
F 3 "" H 2800 2650 50  0001 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5DC5C9C0
P 2800 1850
F 0 "#PWR0115" H 2800 1700 50  0001 C CNN
F 1 "+5V" H 2815 2023 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DC5D0C1
P 1750 2000
F 0 "R1" H 1700 1950 50  0000 R CNN
F 1 "750k" H 1700 2050 50  0000 R CNN
F 2 "" V 1680 2000 50  0001 C CNN
F 3 "~" H 1750 2000 50  0001 C CNN
	1    1750 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5DC6C24A
P 2450 2450
F 0 "R3" H 2400 2500 50  0000 R CNN
F 1 "250k" H 2400 2400 50  0000 R CNN
F 2 "" V 2380 2450 50  0001 C CNN
F 3 "~" H 2450 2450 50  0001 C CNN
	1    2450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1750 2100 1850
Wire Wire Line
	1750 2150 1750 2250
Wire Wire Line
	2100 2150 2100 2250
Wire Wire Line
	2450 2300 2450 2250
Wire Wire Line
	2450 2600 2450 2750
Connection ~ 1750 2250
Wire Wire Line
	4900 1700 5600 1700
Wire Wire Line
	4600 1300 4600 2000
$Comp
L Amplifier_Operational:LT1493 U2
U 4 1 5DCDB989
P 5700 3000
F 0 "U2" H 5700 3250 50  0000 C CNN
F 1 "LT1493" H 5700 3276 50  0001 C CNN
F 2 "" H 5700 3000 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5700 3000 50  0001 C CNN
	4    5700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3350 6000 3350
Wire Wire Line
	5550 3350 5350 3350
Wire Wire Line
	5350 3350 5350 3100
$Comp
L Device:R R9
U 1 1 5DCDDECF
P 5350 3600
F 0 "R9" H 5420 3646 50  0000 L CNN
F 1 "10k" H 5420 3555 50  0000 L CNN
F 2 "" V 5280 3600 50  0001 C CNN
F 3 "~" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5DCDDED5
P 5350 3800
F 0 "#PWR0116" H 5350 3550 50  0001 C CNN
F 1 "GND" H 5355 3627 50  0000 C CNN
F 2 "" H 5350 3800 50  0001 C CNN
F 3 "" H 5350 3800 50  0001 C CNN
	1    5350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3750 5350 3800
Wire Wire Line
	5350 3450 5350 3350
Connection ~ 5350 3350
$Comp
L Device:R R11
U 1 1 5DCDDEDE
P 5700 3350
F 0 "R11" V 5800 3350 50  0000 C CNN
F 1 "390k" V 5900 3350 50  0000 C CNN
F 2 "" V 5630 3350 50  0001 C CNN
F 3 "~" H 5700 3350 50  0001 C CNN
	1    5700 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3350 6000 3000
Wire Wire Line
	5350 3100 5400 3100
Text Notes 5950 2850 2    49   ~ 0
Gain: 40
Wire Wire Line
	5200 2900 5400 2900
Wire Wire Line
	5200 2900 5200 3250
Wire Wire Line
	4600 2000 4950 2000
Connection ~ 4600 2000
Wire Wire Line
	5200 3250 4600 3250
Text Label 6650 3000 2    50   ~ 0
ADC3
Wire Wire Line
	1750 1750 2100 1750
Wire Wire Line
	1750 1500 1750 1750
Connection ~ 1750 1750
Wire Wire Line
	1750 1750 1750 1850
Wire Wire Line
	1700 1750 1750 1750
Connection ~ 2100 2250
Wire Wire Line
	2100 2250 2450 2250
Connection ~ 2450 2250
Wire Wire Line
	2800 2200 2800 2250
Connection ~ 2800 2250
Wire Wire Line
	2800 2250 2800 2300
Wire Wire Line
	3600 2450 3600 2650
Connection ~ 1350 1750
Wire Wire Line
	3600 2650 4300 2650
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5DD8F7E7
P 1150 3750
F 0 "J2" H 1078 3988 50  0000 C CNN
F 1 "BNC" H 1078 3897 50  0000 C CNN
F 2 "" H 1150 3750 50  0001 C CNN
F 3 " ~" H 1150 3750 50  0001 C CNN
	1    1150 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DD8F7ED
P 1150 3950
F 0 "#PWR01" H 1150 3700 50  0001 C CNN
F 1 "GND" H 1155 3777 50  0000 C CNN
F 2 "" H 1150 3950 50  0001 C CNN
F 3 "" H 1150 3950 50  0001 C CNN
	1    1150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DD8F7F3
P 1550 3750
F 0 "C2" V 1700 3750 50  0000 C CNN
F 1 "22n" V 1800 3750 50  0000 C CNN
F 2 "" H 1588 3600 50  0001 C CNN
F 3 "~" H 1550 3750 50  0001 C CNN
	1    1550 3750
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_SPST SW2
U 1 1 5DD8F7F9
P 1550 3500
F 0 "SW2" H 1550 3650 50  0000 C CNN
F 1 "SW_SPST" H 1550 3250 50  0001 C CNN
F 2 "" H 1550 3500 50  0001 C CNN
F 3 "~" H 1550 3500 50  0001 C CNN
	1    1550 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3750 1350 3500
Wire Wire Line
	1350 3750 1400 3750
Wire Wire Line
	2450 4750 2050 4750
Text Label 2050 4750 0    50   ~ 0
Offset
$Comp
L Device:C C8
U 1 1 5DD8F803
P 2450 4900
F 0 "C8" H 2550 4850 50  0000 L CNN
F 1 "22n" H 2550 4950 50  0000 L CNN
F 2 "" H 2488 4750 50  0001 C CNN
F 3 "~" H 2450 4900 50  0001 C CNN
	1    2450 4900
	-1   0    0    1   
$EndComp
Connection ~ 2450 4750
$Comp
L power:GND #PWR06
U 1 1 5DD8F80A
P 2450 5050
F 0 "#PWR06" H 2450 4800 50  0001 C CNN
F 1 "GND" H 2455 4877 50  0000 C CNN
F 2 "" H 2450 5050 50  0001 C CNN
F 3 "" H 2450 5050 50  0001 C CNN
	1    2450 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 5DD8F810
P 2800 4450
F 0 "D4" V 2800 4529 50  0000 L CNN
F 1 "D_Schottky" V 2845 4529 50  0001 L CNN
F 2 "" H 2800 4450 50  0001 C CNN
F 3 "~" H 2800 4450 50  0001 C CNN
	1    2800 4450
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D3
U 1 1 5DD8F816
P 2800 4050
F 0 "D3" V 2800 4129 50  0000 L CNN
F 1 "D_Schottky" V 2845 4129 50  0001 L CNN
F 2 "" H 2800 4050 50  0001 C CNN
F 3 "~" H 2800 4050 50  0001 C CNN
	1    2800 4050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DD8F81C
P 1750 4650
F 0 "#PWR02" H 1750 4400 50  0001 C CNN
F 1 "GND" H 1755 4477 50  0000 C CNN
F 2 "" H 1750 4650 50  0001 C CNN
F 3 "" H 1750 4650 50  0001 C CNN
	1    1750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5DD8F822
P 1750 4450
F 0 "C4" H 1650 4500 50  0000 R CNN
F 1 "47p" H 1650 4400 50  0000 R CNN
F 2 "" H 1788 4300 50  0001 C CNN
F 3 "~" H 1750 4450 50  0001 C CNN
	1    1750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4250 2100 4250
Wire Wire Line
	1750 4300 1750 4250
$Comp
L Device:C_Variable C6
U 1 1 5DD8F82A
P 2100 4000
F 0 "C6" H 2200 4050 50  0000 L CNN
F 1 "10..60p" H 2200 3950 50  0000 L CNN
F 2 "" H 2100 4000 50  0001 C CNN
F 3 "~" H 2100 4000 50  0001 C CNN
	1    2100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3850 2800 3900
Wire Wire Line
	1750 4600 1750 4650
Wire Wire Line
	2800 4600 2800 4650
$Comp
L Amplifier_Operational:LT1493 U3
U 1 1 5DD8F833
P 3950 4950
F 0 "U3" H 3950 5150 50  0000 C CNN
F 1 "LT1493" H 3950 5226 50  0001 C CNN
F 2 "" H 3950 4950 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 3950 4950 50  0001 C CNN
	1    3950 4950
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LT1493 U3
U 2 1 5DD8F839
P 5250 4700
F 0 "U3" H 5250 4975 50  0000 C CNN
F 1 "LT1493" H 5250 4976 50  0001 C CNN
F 2 "" H 5250 4700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5250 4700 50  0001 C CNN
	2    5250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4600 4600 4600
Wire Wire Line
	5550 4700 5600 4700
Wire Wire Line
	5550 5400 5600 5400
Text Label 6650 4700 2    50   ~ 0
ADC4
Text Label 6650 5400 2    50   ~ 0
ADC5
Wire Wire Line
	5600 5000 5600 4700
Wire Wire Line
	4900 5000 4900 4800
Wire Wire Line
	4900 4800 4950 4800
Wire Wire Line
	4250 4950 4300 4950
Wire Wire Line
	3600 5050 3650 5050
Wire Wire Line
	4300 5250 4300 4950
Wire Wire Line
	4300 4950 4600 4950
Text Notes 5450 5250 2    49   ~ 0
Gain: 10
$Comp
L Amplifier_Operational:LT1493 U3
U 3 1 5DD8F84E
P 5250 5400
F 0 "U3" H 5250 5675 50  0000 C CNN
F 1 "LT1493" H 5250 5676 50  0001 C CNN
F 2 "" H 5250 5400 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5250 5400 50  0001 C CNN
	3    5250 5400
	1    0    0    -1  
$EndComp
Text Notes 5450 4550 2    49   ~ 0
Gain: 1
Wire Wire Line
	5400 5750 5600 5750
Wire Wire Line
	5100 5750 4900 5750
Wire Wire Line
	4900 5750 4900 5500
$Comp
L Device:R R6
U 1 1 5DD8F85A
P 4900 6000
F 0 "R6" H 4970 6046 50  0000 L CNN
F 1 "10k" H 4970 5955 50  0000 L CNN
F 2 "" V 4830 6000 50  0001 C CNN
F 3 "~" H 4900 6000 50  0001 C CNN
	1    4900 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5DD8F860
P 4900 6200
F 0 "#PWR011" H 4900 5950 50  0001 C CNN
F 1 "GND" H 4905 6027 50  0000 C CNN
F 2 "" H 4900 6200 50  0001 C CNN
F 3 "" H 4900 6200 50  0001 C CNN
	1    4900 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6150 4900 6200
Wire Wire Line
	4900 5850 4900 5750
Connection ~ 4900 5750
$Comp
L Device:R R8
U 1 1 5DD8F869
P 5250 5750
F 0 "R8" V 5350 5750 50  0000 C CNN
F 1 "90k" V 5450 5750 50  0000 C CNN
F 2 "" V 5180 5750 50  0001 C CNN
F 3 "~" H 5250 5750 50  0001 C CNN
	1    5250 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5500 4950 5500
Wire Wire Line
	5600 5750 5600 5400
$Comp
L power:GND #PWR08
U 1 1 5DD8F872
P 2800 4650
F 0 "#PWR08" H 2800 4400 50  0001 C CNN
F 1 "GND" H 2805 4477 50  0000 C CNN
F 2 "" H 2800 4650 50  0001 C CNN
F 3 "" H 2800 4650 50  0001 C CNN
	1    2800 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5DD8F878
P 2800 3850
F 0 "#PWR07" H 2800 3700 50  0001 C CNN
F 1 "+5V" H 2815 4023 50  0000 C CNN
F 2 "" H 2800 3850 50  0001 C CNN
F 3 "" H 2800 3850 50  0001 C CNN
	1    2800 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5DD8F87E
P 1750 4000
F 0 "R2" H 1700 3950 50  0000 R CNN
F 1 "750k" H 1700 4050 50  0000 R CNN
F 2 "" V 1680 4000 50  0001 C CNN
F 3 "~" H 1750 4000 50  0001 C CNN
	1    1750 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5DD8F884
P 2450 4450
F 0 "R4" H 2400 4500 50  0000 R CNN
F 1 "250k" H 2400 4400 50  0000 R CNN
F 2 "" V 2380 4450 50  0001 C CNN
F 3 "~" H 2450 4450 50  0001 C CNN
	1    2450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3750 2100 3850
Wire Wire Line
	1750 4150 1750 4250
Wire Wire Line
	2100 4150 2100 4250
Wire Wire Line
	2450 4300 2450 4250
Wire Wire Line
	2450 4600 2450 4750
Connection ~ 1750 4250
Wire Wire Line
	4900 5000 5600 5000
Connection ~ 4300 4950
Wire Wire Line
	4600 4600 4600 4950
$Comp
L Amplifier_Operational:LT1493 U3
U 4 1 5DD8F894
P 5700 6300
F 0 "U3" H 5700 6550 50  0000 C CNN
F 1 "LT1493" H 5700 6576 50  0001 C CNN
F 2 "" H 5700 6300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 5700 6300 50  0001 C CNN
	4    5700 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6650 6000 6650
Wire Wire Line
	5550 6650 5350 6650
Wire Wire Line
	5350 6650 5350 6400
$Comp
L Device:R R10
U 1 1 5DD8F89D
P 5350 6900
F 0 "R10" H 5420 6946 50  0000 L CNN
F 1 "10k" H 5420 6855 50  0000 L CNN
F 2 "" V 5280 6900 50  0001 C CNN
F 3 "~" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5DD8F8A3
P 5350 7100
F 0 "#PWR012" H 5350 6850 50  0001 C CNN
F 1 "GND" H 5355 6927 50  0000 C CNN
F 2 "" H 5350 7100 50  0001 C CNN
F 3 "" H 5350 7100 50  0001 C CNN
	1    5350 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 7050 5350 7100
Wire Wire Line
	5350 6750 5350 6650
Connection ~ 5350 6650
$Comp
L Device:R R12
U 1 1 5DD8F8AC
P 5700 6650
F 0 "R12" V 5800 6650 50  0000 C CNN
F 1 "390k" V 5900 6650 50  0000 C CNN
F 2 "" V 5630 6650 50  0001 C CNN
F 3 "~" H 5700 6650 50  0001 C CNN
	1    5700 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 6650 6000 6300
Wire Wire Line
	5350 6400 5400 6400
Text Notes 5950 6150 2    49   ~ 0
Gain: 40
Wire Wire Line
	5200 6200 5400 6200
Wire Wire Line
	5200 6200 5200 6550
Wire Wire Line
	4600 5300 4950 5300
Connection ~ 4600 5300
Wire Wire Line
	5200 6550 4600 6550
Wire Wire Line
	1750 3750 2100 3750
Wire Wire Line
	1750 3500 1750 3750
Connection ~ 1750 3750
Wire Wire Line
	1750 3750 1750 3850
Wire Wire Line
	1700 3750 1750 3750
Connection ~ 2100 4250
Wire Wire Line
	2100 4250 2450 4250
Connection ~ 2450 4250
Wire Wire Line
	2800 4200 2800 4250
Wire Wire Line
	2450 4250 2800 4250
Connection ~ 2800 4250
Wire Wire Line
	2800 4250 2800 4300
Connection ~ 1350 3750
Wire Wire Line
	3600 5250 4300 5250
Wire Wire Line
	3350 4250 3350 4850
Text Label 6650 6300 2    50   ~ 0
ADC6
Wire Wire Line
	4100 3850 4100 3900
Wire Wire Line
	4100 3900 3850 3900
Wire Wire Line
	3850 3700 3850 3900
Connection ~ 4100 3900
Wire Wire Line
	4100 3900 4100 3950
Wire Wire Line
	3850 3200 4100 3200
Wire Wire Line
	3850 3200 3850 3400
Wire Wire Line
	4100 3150 4100 3200
Connection ~ 4100 3200
Wire Wire Line
	4100 3200 4100 3250
$Comp
L Amplifier_Operational:LT1493 U3
U 5 1 5DCCAC26
P 4200 6700
F 0 "U3" H 4158 6746 50  0000 L CNN
F 1 "LT1493" H 4158 6655 50  0000 L CNN
F 2 "" H 4200 6700 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/14923f.pdf" H 4200 6700 50  0001 C CNN
	5    4200 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 5DCCAC2C
P 4100 6300
F 0 "#PWR09" H 4100 6150 50  0001 C CNN
F 1 "+5V" H 4115 6473 50  0000 C CNN
F 2 "" H 4100 6300 50  0001 C CNN
F 3 "" H 4100 6300 50  0001 C CNN
	1    4100 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5DCCAC32
P 4100 7100
F 0 "#PWR010" H 4100 6850 50  0001 C CNN
F 1 "GND" H 4105 6927 50  0000 C CNN
F 2 "" H 4100 7100 50  0001 C CNN
F 3 "" H 4100 7100 50  0001 C CNN
	1    4100 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5DCCAC38
P 3850 6700
F 0 "C10" H 3750 6750 50  0000 R CNN
F 1 "100n" H 3750 6650 50  0000 R CNN
F 2 "" H 3888 6550 50  0001 C CNN
F 3 "~" H 3850 6700 50  0001 C CNN
	1    3850 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 7000 4100 7050
Wire Wire Line
	4100 7050 3850 7050
Wire Wire Line
	3850 6850 3850 7050
Connection ~ 4100 7050
Wire Wire Line
	4100 7050 4100 7100
Wire Wire Line
	3850 6350 4100 6350
Wire Wire Line
	3850 6350 3850 6550
Wire Wire Line
	4100 6300 4100 6350
Connection ~ 4100 6350
Wire Wire Line
	4100 6350 4100 6400
Wire Notes Line
	6750 750  6750 7550
Wire Notes Line
	3450 750  6750 750 
Wire Notes Line
	3250 750  3250 5600
Wire Notes Line
	3250 5600 700  5600
Wire Notes Line
	700  5600 700  750 
Wire Notes Line
	700  750  3250 750 
Wire Wire Line
	4600 5300 4600 6550
Wire Notes Line
	3250 5800 700  5800
Wire Notes Line
	700  5800 700  7550
Wire Notes Line
	3250 7550 3250 5800
Wire Notes Line
	700  7550 3250 7550
Connection ~ 4600 4950
Wire Wire Line
	4600 4950 4600 5300
Wire Notes Line
	3450 750  3450 7550
Wire Notes Line
	3450 7550 6750 7550
Wire Wire Line
	3600 5050 3600 5250
Connection ~ 4300 2350
Connection ~ 4600 2350
Wire Wire Line
	4600 2350 4600 3250
Wire Wire Line
	4600 2000 4600 2350
Wire Wire Line
	3650 2250 2800 2250
Wire Wire Line
	3350 4250 2800 4250
$Comp
L Analog_DAC:DAC101C081CIMK U4
U 1 1 5DEDA2F1
P 1900 6650
F 0 "U4" H 2050 6900 50  0000 C CNN
F 1 "DAC101C081CIMK" H 1550 6900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2550 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/dac101c081.pdf" H 1900 6650 50  0001 C CNN
	1    1900 6650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5DEDC06F
P 1900 6950
F 0 "#PWR04" H 1900 6700 50  0001 C CNN
F 1 "GND" H 1900 6750 50  0000 C CNN
F 2 "" H 1900 6950 50  0001 C CNN
F 3 "" H 1900 6950 50  0001 C CNN
	1    1900 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5DEDC242
P 1900 6350
F 0 "#PWR03" H 1900 6200 50  0001 C CNN
F 1 "+5V" H 1915 6523 50  0000 C CNN
F 2 "" H 1900 6350 50  0001 C CNN
F 3 "" H 1900 6350 50  0001 C CNN
	1    1900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6650 1250 6650
Text Label 1250 6650 0    50   ~ 0
Offset
Text Label 2650 6550 2    50   ~ 0
SCL
Text Label 2650 6650 2    50   ~ 0
SDA
Wire Wire Line
	2650 6550 2300 6550
Wire Wire Line
	2300 6650 2650 6650
$Comp
L power:GND #PWR05
U 1 1 5DF04D0D
P 2350 6950
F 0 "#PWR05" H 2350 6700 50  0001 C CNN
F 1 "GND" H 2350 6750 50  0000 C CNN
F 2 "" H 2350 6950 50  0001 C CNN
F 3 "" H 2350 6950 50  0001 C CNN
	1    2350 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6750 2350 6750
Wire Wire Line
	2350 6750 2350 6950
Wire Notes Line
	6950 750  10950 750 
Text Notes 7000 900  0    79   ~ 16
ADC/Controller
Wire Notes Line
	6950 750  6950 4400
Wire Notes Line
	6950 4400 10950 4400
Wire Notes Line
	10950 750  10950 4400
Entry Wire Line
	6750 4700 6850 4800
Wire Wire Line
	5600 4700 6750 4700
Entry Wire Line
	6750 1400 6850 1500
Entry Wire Line
	6750 2100 6850 2200
Entry Wire Line
	6750 5400 6850 5500
Entry Wire Line
	6750 6300 6850 6400
Wire Wire Line
	6000 6300 6750 6300
Wire Wire Line
	5600 5400 6750 5400
Wire Wire Line
	5600 2100 6750 2100
Wire Wire Line
	5600 1400 6750 1400
Entry Wire Line
	6750 3000 6850 3100
Entry Wire Line
	6950 2050 6850 2150
Entry Wire Line
	6950 2150 6850 2250
Entry Wire Line
	6950 2250 6850 2350
Entry Wire Line
	6950 2350 6850 2450
Entry Wire Line
	6950 2450 6850 2550
Entry Wire Line
	6950 1950 6850 2050
Text Label 7050 2450 0    50   ~ 0
ADC6
Text Label 7050 2350 0    50   ~ 0
ADC5
Text Label 7050 2250 0    50   ~ 0
ADC4
Text Label 7050 2150 0    50   ~ 0
ADC3
Text Label 7050 2050 0    50   ~ 0
ADC2
Text Label 7050 1950 0    50   ~ 0
ADC1
$Comp
L power:GND #PWR0105
U 1 1 5DBE6A59
P 9550 6050
F 0 "#PWR0105" H 9550 5800 50  0001 C CNN
F 1 "GND" H 9550 5900 50  0000 C CNN
F 2 "" H 9550 6050 50  0001 C CNN
F 3 "" H 9550 6050 50  0001 C CNN
	1    9550 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5950 9600 5950
Connection ~ 9550 5950
Wire Wire Line
	9550 5950 9550 6050
Wire Wire Line
	9500 5950 9550 5950
$Comp
L Device:Crystal_Small Y1
U 1 1 5E022EC0
P 8000 3400
F 0 "Y1" V 8000 3488 50  0000 L CNN
F 1 "Crystal_Small" V 8045 3488 50  0001 L CNN
F 2 "" H 8000 3400 50  0001 C CNN
F 3 "~" H 8000 3400 50  0001 C CNN
	1    8000 3400
	0    -1   1    0   
$EndComp
$Comp
L Connector:USB_B J3
U 1 1 5DBE1BDB
P 9500 5550
F 0 "J3" H 9550 5900 50  0000 R CNN
F 1 "USB_B" H 9270 5448 50  0001 R CNN
F 2 "" H 9650 5500 50  0001 C CNN
F 3 " ~" H 9650 5500 50  0001 C CNN
	1    9500 5550
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5DBE613E
P 9150 5050
F 0 "#PWR0104" H 9150 4900 50  0001 C CNN
F 1 "+5V" H 9165 5223 50  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5550 9200 5550
$Comp
L Device:R R16
U 1 1 5E05BA07
P 8950 5650
F 0 "R16" V 8850 5650 50  0000 R CNN
F 1 "22" V 8850 5750 50  0000 C CNN
F 2 "" V 8880 5650 50  0001 C CNN
F 3 "~" H 8950 5650 50  0001 C CNN
	1    8950 5650
	0    1    -1   0   
$EndComp
Wire Wire Line
	9100 5650 9200 5650
Wire Wire Line
	8150 3300 8000 3300
Wire Wire Line
	8150 3500 8000 3500
$Comp
L Device:C_Small C11
U 1 1 5E11B0AF
P 7700 3300
F 0 "C11" V 7900 3300 50  0000 C CNN
F 1 "27p" V 7800 3300 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "~" H 7700 3300 50  0001 C CNN
	1    7700 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5E12273A
P 7700 3500
F 0 "C12" V 7900 3500 50  0000 C CNN
F 1 "27p" V 7800 3500 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "~" H 7700 3500 50  0001 C CNN
	1    7700 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 3300 8000 3300
Connection ~ 8000 3300
Wire Wire Line
	8000 3500 7800 3500
Connection ~ 8000 3500
Wire Wire Line
	7600 3300 7400 3300
Wire Wire Line
	7400 3300 7400 3500
Wire Wire Line
	7400 3500 7600 3500
Wire Wire Line
	7400 3500 7400 3600
Connection ~ 7400 3500
$Comp
L power:GND #PWR013
U 1 1 5E141A3D
P 7400 3600
F 0 "#PWR013" H 7400 3350 50  0001 C CNN
F 1 "GND" H 7400 3450 50  0000 C CNN
F 2 "" H 7400 3600 50  0001 C CNN
F 3 "" H 7400 3600 50  0001 C CNN
	1    7400 3600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5E02B0BA
P 8950 5550
F 0 "R15" V 8850 5550 50  0000 R CNN
F 1 "22" V 8850 5600 50  0000 L CNN
F 2 "" V 8880 5550 50  0001 C CNN
F 3 "~" H 8950 5550 50  0001 C CNN
	1    8950 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	9150 5350 9200 5350
Wire Wire Line
	8050 3650 8050 3700
$Comp
L power:GND #PWR017
U 1 1 5E2B3B39
P 8050 4000
F 0 "#PWR017" H 8050 3750 50  0001 C CNN
F 1 "GND" H 8055 3827 50  0000 C CNN
F 2 "" H 8050 4000 50  0001 C CNN
F 3 "" H 8050 4000 50  0001 C CNN
	1    8050 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 5E2B28A5
P 8050 3850
F 0 "C13" H 7950 3900 50  0000 R CNN
F 1 "100n" H 7950 3800 50  0000 R CNN
F 2 "" H 8088 3700 50  0001 C CNN
F 3 "~" H 8050 3850 50  0001 C CNN
	1    8050 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3650 8050 3650
Connection ~ 10350 2000
Wire Wire Line
	10250 2000 10350 2000
Wire Wire Line
	10250 1950 10250 2000
Wire Wire Line
	10350 2000 10350 2100
Wire Wire Line
	10450 2000 10350 2000
Wire Wire Line
	10450 1950 10450 2000
Connection ~ 10350 1600
Wire Wire Line
	10450 1600 10450 1650
Wire Wire Line
	10350 1600 10450 1600
Wire Wire Line
	10350 1500 10350 1600
Wire Wire Line
	10250 1600 10350 1600
Wire Wire Line
	10250 1650 10250 1600
$Comp
L Device:C C15
U 1 1 5E213E16
P 10250 1800
F 0 "C15" H 10150 1850 50  0000 R CNN
F 1 "100n" H 10150 1750 50  0000 R CNN
F 2 "" H 10288 1650 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 8850 1250
Connection ~ 8750 1250
Wire Wire Line
	8650 1250 8650 1300
Wire Wire Line
	8750 1250 8650 1250
Wire Wire Line
	9400 1550 9350 1550
Wire Wire Line
	9400 1450 9400 1550
$Comp
L power:+5V #PWR016
U 1 1 5E143130
P 9400 1150
F 0 "#PWR016" H 9400 1000 50  0001 C CNN
F 1 "+5V" H 9415 1323 50  0000 C CNN
F 2 "" H 9400 1150 50  0001 C CNN
F 3 "" H 9400 1150 50  0001 C CNN
	1    9400 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5E142A66
P 9400 1300
F 0 "R13" H 9450 1350 50  0000 L CNN
F 1 "10k" H 9450 1250 50  0000 L CNN
F 2 "" V 9330 1300 50  0001 C CNN
F 3 "~" H 9400 1300 50  0001 C CNN
	1    9400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 8750 1150
Wire Wire Line
	8850 1250 8850 1300
Wire Wire Line
	8750 1300 8750 1250
$Comp
L power:+5V #PWR014
U 1 1 5E0728F6
P 8750 1150
F 0 "#PWR014" H 8750 1000 50  0001 C CNN
F 1 "+5V" H 8765 1323 50  0000 C CNN
F 2 "" H 8750 1150 50  0001 C CNN
F 3 "" H 8750 1150 50  0001 C CNN
	1    8750 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5650 8700 5650
Wire Wire Line
	8800 5550 8700 5550
$Comp
L power:GND #PWR023
U 1 1 5DCEAA7C
P 10350 2100
F 0 "#PWR023" H 10350 1850 50  0001 C CNN
F 1 "GND" H 10355 1927 50  0000 C CNN
F 2 "" H 10350 2100 50  0001 C CNN
F 3 "" H 10350 2100 50  0001 C CNN
	1    10350 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 5DCEA66F
P 10350 1500
F 0 "#PWR022" H 10350 1350 50  0001 C CNN
F 1 "+5V" H 10365 1673 50  0000 C CNN
F 2 "" H 10350 1500 50  0001 C CNN
F 3 "" H 10350 1500 50  0001 C CNN
	1    10350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C16
U 1 1 5DCE9BCE
P 10450 1800
F 0 "C16" H 10350 1850 50  0000 R CNN
F 1 "47??" H 10350 1750 50  0000 R CNN
F 2 "" H 10488 1650 50  0001 C CNN
F 3 "~" H 10450 1800 50  0001 C CNN
	1    10450 1800
	-1   0    0    -1  
$EndComp
Text Notes 6700 1650 2    49   ~ 0
2V/Div@ExtRef\n1V/Div@IntRef\nRange: 20V
Text Notes 6700 2350 2    49   ~ 0
0.2V/Div@ExtRef\n0.1V/Div@IntRef\nRange: 2V
Text Notes 6700 3250 2    49   ~ 0
50mV/Div@ExtRef\n20mV/Div@IntRef\nRange: 1V
Wire Wire Line
	3350 4850 3650 4850
Wire Wire Line
	2450 2250 2800 2250
Connection ~ 5600 2100
Connection ~ 5600 1400
Connection ~ 6000 6300
Connection ~ 5600 5400
Connection ~ 5600 4700
Text Notes 6700 4950 2    49   ~ 0
2V/Div@ExtRef\n1V/Div@IntRef\nRange: 20V
Text Notes 6700 5650 2    49   ~ 0
0.2V/Div@ExtRef\n0.1V/Div@IntRef\nRange: 2V
Text Notes 6700 6550 2    49   ~ 0
50mV/Div@ExtRef\n20mV/Div@IntRef\nRange: 1V
Connection ~ 6000 3000
Wire Wire Line
	6000 3000 6750 3000
Wire Wire Line
	9400 1550 9650 1550
Connection ~ 9400 1550
Text Label 9650 1550 2    50   ~ 0
RST
Wire Wire Line
	9350 3250 9500 3250
Wire Wire Line
	9500 3250 9500 3300
Text Notes 7000 4750 0    79   ~ 16
PC Connection
$Comp
L Interface_USB:CH330N U5
U 1 1 5DC6C25C
P 8300 5450
F 0 "U5" H 8500 5700 50  0000 C CNN
F 1 "CH330N" H 8100 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8150 6200 50  0001 C CNN
F 3 "http://www.wch.cn/downloads/file/240.html" H 8200 5650 50  0001 C CNN
	1    8300 5450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5DC9D5DC
P 8800 5200
F 0 "C14" H 8700 5250 50  0000 R CNN
F 1 "100n" H 8700 5150 50  0000 R CNN
F 2 "" H 8838 5050 50  0001 C CNN
F 3 "~" H 8800 5200 50  0001 C CNN
	1    8800 5200
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5DC9E421
P 8300 5050
F 0 "#PWR018" H 8300 4900 50  0001 C CNN
F 1 "+5V" H 8315 5223 50  0000 C CNN
F 2 "" H 8300 5050 50  0001 C CNN
F 3 "" H 8300 5050 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5DC9E97C
P 8800 5050
F 0 "#PWR025" H 8800 4900 50  0001 C CNN
F 1 "+5V" H 8815 5223 50  0000 C CNN
F 2 "" H 8800 5050 50  0001 C CNN
F 3 "" H 8800 5050 50  0001 C CNN
	1    8800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5350 8800 5350
$Comp
L power:GND #PWR024
U 1 1 5DCA902D
P 8300 5850
F 0 "#PWR024" H 8300 5600 50  0001 C CNN
F 1 "GND" H 8300 5700 50  0000 C CNN
F 2 "" H 8300 5850 50  0001 C CNN
F 3 "" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
NoConn ~ 7900 5650
Wire Wire Line
	8300 5050 8300 5150
Wire Wire Line
	9150 5050 9150 5350
Wire Wire Line
	7900 5350 7650 5350
Wire Wire Line
	7900 5450 7650 5450
Text Label 7650 5350 0    50   ~ 0
RX
Text Label 7650 5450 0    50   ~ 0
TX
$Comp
L atmega16l-8pu:ATmega32A-PU U1
U 1 1 5DD317B3
P 8750 3300
F 0 "U1" H 8400 5250 50  0000 C CNN
F 1 "ATmega32A-PU" V 8750 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 8750 3300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-8155-8-bit-microcontroller-avr-atmega32a_datasheet.pdf" H 8750 3300 50  0001 C CNN
	1    8750 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DFF2CC4
P 8750 4000
F 0 "#PWR015" H 8750 3750 50  0001 C CNN
F 1 "GND" H 8750 3850 50  0000 C CNN
F 2 "" H 8750 4000 50  0001 C CNN
F 3 "" H 8750 4000 50  0001 C CNN
	1    8750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 3900 8750 4000
$Comp
L Device:LED D5
U 1 1 5E9C36B1
P 9500 3750
F 0 "D5" V 9539 3633 50  0000 R CNN
F 1 "LED" V 9448 3633 50  0000 R CNN
F 2 "" H 9500 3750 50  0001 C CNN
F 3 "~" H 9500 3750 50  0001 C CNN
	1    9500 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R14
U 1 1 5E9D0F11
P 9500 3450
F 0 "R14" H 9570 3496 50  0000 L CNN
F 1 "2.2k" H 9570 3405 50  0000 L CNN
F 2 "" V 9430 3450 50  0001 C CNN
F 3 "~" H 9500 3450 50  0001 C CNN
	1    9500 3450
	1    0    0    -1  
$EndComp
Wire Notes Line
	6950 4600 10950 4600
Wire Notes Line
	10950 4600 10950 6350
Wire Notes Line
	10950 6350 6950 6350
Wire Notes Line
	6950 6350 6950 4600
Text Label 7900 1550 0    50   ~ 0
RX
Text Label 7900 1650 0    50   ~ 0
TX
Text Label 7900 2850 0    50   ~ 0
SDA
Text Label 7900 2750 0    50   ~ 0
SCL
Wire Wire Line
	7900 2750 8150 2750
Wire Wire Line
	7900 2850 8150 2850
Wire Wire Line
	6950 1950 8150 1950
Wire Wire Line
	6950 2050 8150 2050
Wire Wire Line
	6950 2150 8150 2150
Wire Wire Line
	6950 2250 8150 2250
Wire Wire Line
	6950 2350 8150 2350
Wire Wire Line
	6950 2450 8150 2450
Wire Wire Line
	7900 1650 8150 1650
Wire Wire Line
	8150 1550 7900 1550
Text Label 9400 3050 0    50   ~ 0
MISO
Text Label 9400 2950 0    50   ~ 0
MOSI
Text Label 9400 3150 0    50   ~ 0
SCK
$Comp
L avr-isp-6:AVR-ISP-6 J4
U 1 1 5E7F88E7
P 10400 3100
F 0 "J4" H 10400 3500 50  0000 R CNN
F 1 "AVR-ISP" H 10220 3055 50  0001 R CNN
F 2 "" V 9950 3100 50  0001 C CNN
F 3 " ~" H 9125 2550 50  0001 C CNN
	1    10400 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5E7FA087
P 10150 3450
F 0 "#PWR021" H 10150 3200 50  0001 C CNN
F 1 "GND" H 10150 3300 50  0000 C CNN
F 2 "" H 10150 3450 50  0001 C CNN
F 3 "" H 10150 3450 50  0001 C CNN
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5E7FA5D7
P 10150 2750
F 0 "#PWR020" H 10150 2600 50  0001 C CNN
F 1 "+5V" H 10165 2923 50  0000 C CNN
F 2 "" H 10150 2750 50  0001 C CNN
F 3 "" H 10150 2750 50  0001 C CNN
	1    10150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2750 10150 2850
Wire Wire Line
	10150 2850 10200 2850
Wire Wire Line
	10200 3350 10150 3350
Wire Wire Line
	10150 3350 10150 3450
Text Label 10000 3250 0    50   ~ 0
RST
Wire Wire Line
	10000 3250 10200 3250
Wire Wire Line
	9350 2950 10200 2950
Wire Wire Line
	10200 3050 9350 3050
Wire Wire Line
	9350 3150 10200 3150
Wire Wire Line
	9500 3900 9500 4000
$Comp
L power:GND #PWR019
U 1 1 5E9E6435
P 9500 4000
F 0 "#PWR019" H 9500 3750 50  0001 C CNN
F 1 "GND" H 9500 3850 50  0000 C CNN
F 2 "" H 9500 4000 50  0001 C CNN
F 3 "" H 9500 4000 50  0001 C CNN
	1    9500 4000
	1    0    0    -1  
$EndComp
NoConn ~ 9350 3350
NoConn ~ 9350 3450
NoConn ~ 9350 3550
NoConn ~ 9350 3650
NoConn ~ 9350 1700
NoConn ~ 9350 1800
NoConn ~ 9350 1900
NoConn ~ 9350 2000
NoConn ~ 9350 2100
NoConn ~ 9350 2200
NoConn ~ 9350 2300
NoConn ~ 9350 2400
NoConn ~ 9350 2500
NoConn ~ 9350 2600
NoConn ~ 9350 2700
NoConn ~ 9350 2800
NoConn ~ 8150 2550
NoConn ~ 8150 1850
Wire Bus Line
	6850 1450 6850 6450
$EndSCHEMATC
