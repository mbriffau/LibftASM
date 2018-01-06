global _ft_isascii

section .text

; rdi : general register, destination address for mov and cmp

_ft_isascii:
	and     edi, 0xffffff80 ; mask with the 128 firsts bits left to 0 as ASCII range from 0 to 7f in hexa (just below 80)
	sete    al 				; SETE sets AL to 1 if above condition code means "equal", otherwise it sets AL to 0.
 	ret
