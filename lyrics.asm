INCLUDE Irvine32.inc

.data
v1l1 BYTE "This is something new", 0
v1l2 BYTE "The Casper Slide part two", 0
v1l3 BYTE "Featuring the Platinum Band", 0
v1l4 BYTE "And this time", 0
v1l5 BYTE "We're going to get funky", 0
v1l6 BYTE "Funky", 0

v2l1 BYTE "Everybody clap your hands", 0
v2l2 BYTE "Clap, clap, clap, clap your hands", 0
v2l3 BYTE "Clap, clap, clap, clap your hands", 0
v2l4 BYTE "Alright now, we're going to do the basic step", 0

v3l1 BYTE "To the left", 0
v3l2 BYTE "Take it back now, y'all", 0
v3l3 BYTE "One hop this time", 0
v3l4 BYTE "Right foot, let's stomp", 0
v3l5 BYTE "Left foot, let's stomp", 0
v3l6 BYTE "Cha cha real smooth", 0

v4l2 BYTE "Turn it out", 0
v4l3 BYTE "To the left", 0
v4l4 BYTE "Take it back now y'all", 0
v4l5 BYTE "One hop this time", 0
v4l6 BYTE "Right foot, let's stomp", 0
v4l7 BYTE "Left foot, let's stomp", 0
v4l8 BYTE "Cha cha now y'all", 0
v4l9 BYTE "Now it's time to get funky", 0

v5l1 BYTE "To the right now", 0
v5l2 BYTE "To the left", 0
v5l3 BYTE "Take it back now y'all", 0
v5l4 BYTE "One hop this time", 0
v5l5 BYTE "One hop this time", 0
v5l6 BYTE "Right foot two stomps", 0
v5l7 BYTE "Left foot two stomps", 0
v5l8 BYTE "Slide to the left", 0
v5l9 BYTE "Slide to the right", 0
v5l10 BYTE "Criss cross", 0
v5l11 BYTE "Criss cross", 0
v5l12 BYTE "Cha cha real smooth", 0

.code
main PROC PUBLIC
	v1 PROC
		mov dl, 0
		mov dh, 0
		call Gotoxy
		mov edx, OFFSET v1l1
		call WriteString
		; figure out how to pause for a bit
		mov edx, OFFSET v1l2
		call WriteString
	v1 ENDP

	v2 PROC
	v2 ENDP

	v3 PROC
	v3 ENDP

	v4 PROC
	v4 ENDP

	v5 PROC
	v5 ENDP

main ENDP
END main