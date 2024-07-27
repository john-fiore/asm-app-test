; assembly code test (help)
; by john fiore
; 07/26/24 @ 23:12

section .data
	mes db 'what', 0
	
section .bss

section .text
	global _start
	
_start:
	; vid memory
	mov ax, 0xB800
	mov es, ax
	
	; cls
	mov di, 0
	mov cx, 2000
	mov al, ' '
	mov ah, 0x1F
	rep stosw
	
	; calculate video memory
	mov di, 160 * 12 + 10 * 2
	
	; colorz
	mov ah, 0x1E
	
	; write
	mov al, 'w'
	stosw
	mov al, 'h'
	stosw
	mov al, 'a'
	stosw
	mov al, 't'
	stosw
	
hang:
	jmp hang
