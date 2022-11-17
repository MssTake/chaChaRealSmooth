INCLUDE Irvine32.inc

.data
	score BYTE 0,0
	inputChar BYTE ?

	; controls
	defa BYTE "|",0
	clap BYTE "clap",0
	left BYTE "/",0
	back BYTE ".",0
	oneh BYTE "'",0
	righ BYTE "\",0
	cha1 BYTE "{",0
	cha2 BYTE "}",0

	; lyrics
	v1l1 BYTE "This is something new",0
	v1l2 BYTE "The Casper Slide part two",0
	v1l3 BYTE "Featuring the Platinum Band",0
	v1l4 BYTE "And this time",0
	v1l5 BYTE "We're going to get funky",0
	v1l6 BYTE "Funky",0

	v2l1 BYTE "Everybody clap your hands (c)",0
	v2l2 BYTE "Clap, clap, clap, clap your hands",0
	v2l3 BYTE "Clap, clap, clap, clap your hands",0
	v2l4 BYTE "Alright now, we're going to do the basic step",0

	v3l1 BYTE "To the left (a)",0
	v3l2 BYTE "Take it back now, y'all (s)",0
	v3l3 BYTE "One hop this time (w)",0
	v3l4 BYTE "Right foot, let's stomp (d)",0
	v3l5 BYTE "Left foot, let's stomp",0
	v3l6 BYTE "Cha cha real smooth",0

	v4l1 BYTE "Turn it out (I forgot to code this one, sorry)",0
	v4l2 BYTE "To the left",0
	v4l3 BYTE "Take it back now y'all",0
	v4l4 BYTE "One hop this time",0
	v4l5 BYTE "Right foot, let's stomp",0
	v4l6 BYTE "Left foot, let's stomp",0
	v4l7 BYTE "Cha cha now y'all",0
	v4l8 BYTE "Now it's time to get funky",0

.code
main PROC
	mov eax,black (white * 16)
	call SetTextColor
	call Clrscr
	mov dl,40
	mov dh,12
	call GotoXY

	; verse 1
	mov edx,OFFSET v1l1
	call WriteString
	mov eax,916
	call Delay
	call Clrscr
	mov edx,OFFSET v1l2
	call WriteString
	call Clrscr
	mov edx,OFFSET v1l3
	call WriteString
	mov eax,916
	call Delay
	call Clrscr
	mov edx,OFFSET v1l4
	call WriteString
	mov eax,916
	call Delay
	call Clrscr
	mov edx,OFFSET v1l5
	call WriteString
	mov eax,916
	call Delay
	call Clrscr
	mov edx,OFFSET v1l6
	call WriteString
	call Clrscr

	; verse 2
	mov edx,OFFSET v2l1
	call WriteString
	mov eax,916
	call Delay
	je didClap
	call Clrscr
	mov edx,OFFSET v2l2
	call WriteString
	mov eax,916
	call Delay
	je didClap
	call Clrscr
	mov edx,OFFSET v2l3
	call WriteString
	mov eax,916
	call Delay
	je didClap
	call Clrscr
	mov edx,OFFSET v2l4
	call WriteString
	mov eax,916
	call Delay
	call Clrscr

	;verse 3
	mov edx,OFFSET v3l1
	call WriteString
	mov eax,916
	call Delay
	je didLeft
	call Clrscr
	mov edx,OFFSET v3l2
	call WriteString
	mov eax,916
	call Delay
	je didBack
	call Clrscr
	mov edx,OFFSET v3l3
	call WriteString
	mov eax,916
	call Delay
	je didOneh
	call Clrscr
	mov edx,OFFSET v3l4
	call WriteString
	mov eax,916
	call Delay
	je didRigh
	call Clrscr
	mov edx,OFFSET v3l5
	call WriteString
	mov eax,916
	call Delay
	je didLeft
	call Clrscr
	mov edx,OFFSET v3l6
	call WriteString
	mov eax,916
	call Delay
	je didCha1
	je didCha2
	call Clrscr

	; verse 4
	mov edx,OFFSET v4l1
	call WriteString
	mov eax,916
	call Delay
	call Clrscr
	mov edx,OFFSET v4l2
	call WriteString
	mov eax,916
	call Delay
	je didLeft
	call Clrscr
	mov edx,OFFSET v4l3
	call WriteString
	mov eax,916
	call Delay
	je didBack
	call Clrscr
	mov edx,OFFSET v4l4
	call WriteString
	mov eax,916
	call Delay
	je didOneh
	call Clrscr
	mov edx,OFFSET v4l5
	call WriteString
	mov eax,916
	call Delay
	je didRigh
	call Clrscr
	mov edx,OFFSET v4l6
	call WriteString
	mov eax,916
	call Delay
	je didLeft
	call Clrscr
	mov edx,OFFSET v4l7
	call WriteString
	mov eax,916
	call Delay
	je didCha1
	je didCha2
	call Clrscr
	mov edx,OFFSET v4l8
	call WriteString
	mov eax,916
	call Delay
	
	;score
	call Clrscr
	mov edx,OFFSET score
	call WriteString
	mov eax,916
	call Delay

	; controls
	didClap:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"c"
		inc	score
		mov al,clap
		call WriteString
	didLeft:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"a"
		inc score
		mov al,left
		call WriteChar
	didBack:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"s"
		inc score
		mov al,back
		call WriteChar
	didOneh:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"w"
		inc score
		mov al,oneh
		call WriteChar
	didRigh:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"d"
		inc score
		mov al,righ
		call WriteChar
	didCha1:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"q"
		inc score
		mov al,cha1
		call WriteChar
	didCha2:
		call Clrscr
		mov al,defa
		call WriteChar
		call ReadChar
		mov inputChar,al
		cmp inputChar,"e"
		inc score
		mov al,cha2
		call WriteChar

main ENDP
END main