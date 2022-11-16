INCLUDE Irvine32.inc

.data
defa BYTE "|",0
left BYTE "/",0
back BYTE ".",0
oneh BYTE "'",0
righ BYTE "\",0
cha1 BYTE "{",0
cha2 BYTE "}",0
cris BYTE "x",0

.code
main PROC
		; color
		mov eax, black (white * 16)
		call SetTextColor
		call Clrscr

		; position
		dec yPos
		mov dl, xPos
		mov dh, yPos
		call Gotoxy

	defa PROC
		push al,defa
		call WriteString

		call ReadChar
		mov inputChar, al

		; controls
		inputChar, "c"
		je clap

		cmp inputChar, "a"
		je left

		cmp inputChar, "s"
		je back

		cmp inputChar, "w"
		je oneh

		cmp inputChar, "d"
		je righ

		cmp inputChar, "q"
		je cha1

		cmp inputChar, "e"
		je cha2

		cmp inputChar, "x"
		je cris

		cmp inputChar, "l"
		je leav
	defa ENDP

	; moves
	clap PROC
		pop al
		push al,"clap"
		call WriteString
		jmp defa
	clap ENDP

	left PROC
		pop al
		push al,left
		call WriteString
		jmp defa
	left ENDP

	back PROC
		pop al
		push al,back
		call WriteString
		jmp defa
	back ENDP

	oneh PROC
		pop al
		push al,oneh
		call WriteString
		jmp defa
	oneh ENDP

	righ PROC
		pop al
		push al,righ
		call WriteString
		jmp defa
	righ ENDP

	cha1 PROC
		pop al
		push al,cha1
		call WriteString
		jmp defa
	cha1 ENDP

	cha2 PROC
		pop al
		push al,cha2
		call WriteString
		jmp defa
	cha2 ENDP

	cris PROC
		pop al
		push al,cris
		call WriteString
		jmp defa
	cris ENDP

main ENDP
END