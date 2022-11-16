INCLUDE Irvine32.inc

.data
v1l1 WORD "This is something new", 0
v1l2 WORD "The Casper Slide part two", 0
v1l3 WORD "Featuring the Platinum Band", 0
v1l4 WORD "And this time", 0
v1l5 WORD "We're going to get funky", 0
v1l6 WORD "Funky", 0

v2l1 WORD "Everybody clap your hands", 0
v2l2 WORD "Clap, clap, clap, clap your hands", 0
v2l3 WORD "Clap, clap, clap, clap your hands", 0
v2l4 WORD "Alright now, we're going to do the basic step", 0

v3l1 WORD "To the left", 0
v3l2 WORD "Take it back now, y'all", 0
v3l3 WORD "One hop this time", 0
v3l4 WORD "Right foot, let's stomp", 0
v3l5 WORD "Left foot, let's stomp", 0
v3l6 WORD "Cha cha real smooth", 0

v4l2 WORD "Turn it out", 0
v4l3 WORD "To the left", 0
v4l4 WORD "Take it back now y'all", 0
v4l5 WORD "One hop this time", 0
v4l6 WORD "Right foot, let's stomp", 0
v4l7 WORD "Left foot, let's stomp", 0
v4l8 WORD "Cha cha now y'all", 0
v4l9 WORD "Now it's time to get funky", 0

v5l1 WORD "To the right now", 0
v5l2 WORD "To the left", 0
v5l3 WORD "Take it back now y'all", 0
v5l4 WORD "One hop this time", 0
v5l5 WORD "One hop this time", 0
v5l6 WORD "Right foot two stomps", 0
v5l7 WORD "Left foot two stomps", 0
v5l8 WORD "Slide to the left", 0
v5l9 WORD "Slide to the right", 0
v5l10 WORD "Criss cross", 0
v5l11 WORD "Criss cross", 0
v5l12 WORD "Cha cha real smooth", 0

.code
main PROC PUBLIC
	mov dl, 0
	mov dh, 0
	call Gotoxy

	v1 PROC
		push edx, OFFSET v1l1
		call WriteString
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v1l2
		call WriteString
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v1l3
		call WriteString
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v1l4
		call WriteString
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v1l5
		call WriteString
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v1l6
		call WriteString
		pop edx
	v1 ENDP

	v2 PROC
		push edx, OFFSET v2l1
		call WriteString
		; did the player clap?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v2l2
		call WriteString
		; did the player clao?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v2l3
		call WriteString
		; did the player clap?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v2l4
		call WriteString
		; figure out how to pause for a bit
		pop edx	
	v2 ENDP

	v3 PROC
		push edx, OFFSET v3l1
		call WriteString
		; did the player left?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v3l2
		call WriteString
		; did the player back?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v3l3
		call WriteString
		; did the player oneh?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v3l4
		call WriteString
		; did the player righ?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v3l5
		call WriteString
		; did the player left?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v3l6
		call WriteString
		; did the player cha1? cha2?
		; figure out how to pause for a bit
		pop edx
	v3 ENDP

	v4 PROC
		push edx, OFFSET v4l1
		call WriteString
		; write a disclaimer that I didn't code this one
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l2
		call WriteString
		; did the player left?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l3
		call WriteString
		; did the player back?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l4
		call WriteString
		; did the player oneh?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l5
		call WriteString
		; did the player right?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l6
		call WriteString
		pop edx
		push edx, OFFSET v4l7
		call WriteString
		; did the player left?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l8
		call WriteString
		; did the player cha1? cha2?
		; figure out how to pause for a bit
		pop edx
		push edx, OFFSET v4l9
		call WriteString
		; figure out how to pause for a bit
		pop edx
	v4 ENDP

main ENDP
END main