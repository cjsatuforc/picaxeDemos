'***** Dice *****
'  for 08M2  on AXE023 project board
' mike  September 23 - 2015
' http://www.picaxe.com/Hardware/Project-Boards/PICAXE-08-Motor-Driver-Board/
' 23.09.2015 15:26:43

main:
	high 2		'switch on the LEDs for 1
	if input3 is on then display
	low 2

	high 4		'switch on the LEDs for 2
	if input3 is on then display
	low 4

	high 2		'switch on the LEDs for 3
	high 4
	if input3 is on then display
	low 2
	low 4

	high 1		'switch on the LEDs for 4
	high 4
	if input3 is on then display
	low 1
	low 4

	high 1		'switch on the LEDs for 5
	high 2
	high 4
	if input3 is on then display
	low 1
	low 2
	low 4

	high 0		'switch on the LEDs for 6
	high 1
	high 4
	if input3 is on then display
	low 0
	low 1
	low 4

	goto main

display:
	wait 2		'wait 2 seconds
	low 0		'switch all pins off
	low 1
	low 2
	low 4
	goto main

