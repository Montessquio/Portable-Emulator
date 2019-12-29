EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Arduino Nano Generic Controller Half"
Date "2019-12-28"
Rev "0"
Comp ""
Comment1 "This controller has six buttons (four directional, two shoulder) and a single analog joystick."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	6450 3050 6450 4450
Wire Wire Line
	6450 4450 6350 4450
Wire Wire Line
	6550 2950 6550 4350
Wire Wire Line
	6550 4350 6350 4350
Wire Wire Line
	5350 4450 5300 4450
Wire Wire Line
	5300 4450 5300 2650
Wire Wire Line
	5200 4550 5200 3150
Wire Wire Line
	5350 4550 5200 4550
Wire Wire Line
	5100 4650 5100 3650
Wire Wire Line
	5350 4650 5100 4650
Wire Wire Line
	5000 4750 5000 4150
Wire Wire Line
	5350 4750 5000 4750
Wire Wire Line
	5350 4950 4950 4950
Wire Wire Line
	5350 4850 4950 4850
Wire Wire Line
	5200 3150 4950 3150
$Comp
L Switch:SW_Push BTN_B
U 1 1 5E0A6AE0
P 4750 3150
F 0 "BTN_B" H 4750 3435 50  0000 C CNN
F 1 "SW_Push" H 4750 3344 50  0000 C CNN
F 2 "" H 4750 3350 50  0001 C CNN
F 3 "~" H 4750 3350 50  0001 C CNN
	1    4750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3650 4950 3650
$Comp
L Switch:SW_Push BTN_D
U 1 1 5E0A6525
P 4750 3650
F 0 "BTN_D" H 4750 3935 50  0000 C CNN
F 1 "SW_Push" H 4750 3844 50  0000 C CNN
F 2 "" H 4750 3850 50  0001 C CNN
F 3 "~" H 4750 3850 50  0001 C CNN
	1    4750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4150 4950 4150
$Comp
L Switch:SW_Push BTN_R
U 1 1 5E0A51C4
P 4750 4150
F 0 "BTN_R" H 4750 4435 50  0000 C CNN
F 1 "SW_Push" H 4750 4344 50  0000 C CNN
F 2 "" H 4750 4350 50  0001 C CNN
F 3 "~" H 4750 4350 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4850 4950 4650
$Comp
L Switch:SW_Push BTN_L
U 1 1 5E0A5EE0
P 4750 4650
F 0 "BTN_L" H 4750 4935 50  0000 C CNN
F 1 "SW_Push" H 4750 4844 50  0000 C CNN
F 2 "" H 4750 4850 50  0001 C CNN
F 3 "~" H 4750 4850 50  0001 C CNN
	1    4750 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4950 4950 5150
$Comp
L Switch:SW_Push BTN_U
U 1 1 5E0A6172
P 4750 5150
F 0 "BTN_U" H 4750 5435 50  0000 C CNN
F 1 "SW_Push" H 4750 5344 50  0000 C CNN
F 2 "" H 4750 5350 50  0001 C CNN
F 3 "~" H 4750 5350 50  0001 C CNN
	1    4750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5350 5750 5350
Wire Wire Line
	4450 5150 4450 5350
Connection ~ 4450 5150
Wire Wire Line
	4550 5150 4450 5150
Wire Wire Line
	4450 4650 4450 5150
Connection ~ 4450 4650
Wire Wire Line
	4550 4650 4450 4650
Wire Wire Line
	4450 4150 4450 4650
Connection ~ 4450 4150
Wire Wire Line
	4550 4150 4450 4150
Wire Wire Line
	4450 3650 4450 4150
Connection ~ 4450 3650
Wire Wire Line
	4550 3650 4450 3650
Wire Wire Line
	4450 3150 4450 3650
Connection ~ 4450 3150
Wire Wire Line
	4550 3150 4450 3150
Wire Wire Line
	4450 2650 4450 2750
Wire Wire Line
	4550 2650 4450 2650
$Comp
L Switch:SW_Push BTN_T
U 1 1 5E0A7065
P 4750 2650
F 0 "BTN_T" H 4750 2935 50  0000 C CNN
F 1 "SW_Push" H 4750 2844 50  0000 C CNN
F 2 "" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2650 4950 2650
Wire Wire Line
	6050 2750 4450 2750
Connection ~ 4450 2750
Wire Wire Line
	4450 2750 4450 3150
Wire Wire Line
	6050 3050 6450 3050
Wire Wire Line
	6050 2950 6550 2950
Wire Wire Line
	6050 2850 6050 2750
Wire Wire Line
	6050 3350 6050 3150
$Comp
L ControllerParts:2_Axis_Joystick Joy0
U 1 1 5E0F42CB
P 5800 2700
F 0 "Joy0" H 6150 3150 50  0000 C CNN
F 1 "2_Axis_Joystick" H 5950 3250 50  0000 C CNN
F 2 "" H 5800 2700 50  0001 C CNN
F 3 "" H 5800 2700 50  0001 C CNN
	1    5800 2700
	-1   0    0    1   
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v2.x A
U 1 1 5E07F2F1
P 5850 4350
F 0 "A" H 5850 4350 50  0000 C CNN
F 1 "Arduino_Nano" H 5850 4250 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 5850 4350 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 5850 4350 50  0001 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Connection ~ 5750 5350
Wire Wire Line
	5750 5350 5850 5350
Wire Wire Line
	5750 5350 5750 5450
Wire Wire Line
	5750 5450 6450 5450
Wire Wire Line
	6450 5450 6450 4950
Wire Wire Line
	6450 4950 6900 4950
Wire Wire Line
	5750 3350 5750 3300
Wire Wire Line
	5750 3300 6650 3300
Wire Wire Line
	6650 3300 6650 4650
Wire Wire Line
	6650 4650 6900 4650
Wire Wire Line
	6350 4750 6900 4750
Wire Wire Line
	6350 4850 6900 4850
Text Notes 6750 4650 0    50   ~ 10
VIN
Text Notes 6750 4750 0    50   ~ 10
SCL
Text Notes 6750 4850 0    50   ~ 10
SDA
Text Notes 6750 4950 0    50   ~ 10
GND
Text Notes 7050 4950 1    50   ~ 10
To Parent
$EndSCHEMATC
