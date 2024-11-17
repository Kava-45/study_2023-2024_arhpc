%include 'in_out.asm'
section .data
msg1 DB "Введите X: ",0h
msg2 DB "Введите A: ",0h
msg3 DB "Ответ=",0h
section .bss
x: RESB 80
a: RESB 80
ans: RESB 80
section .text
global _start
_start:
; Ввод X
mov eax,msg1
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x
call atoi
mov [x],eax

; Ввод A
mov eax,msg2
call sprint
mov ecx,a
mov edx,80
call sread
mov eax,a
call atoi
mov [a],eax

; Проверка условия X > 2
mov eax, [x]
cmp eax, 2
jg x_greater_2  ; Переход, если X > 2

; Если X <= 2, вычисляем X - 2
mov eax, [x]
sub eax, 2
jmp ansv

x_greater_2:
; Если X > 2, вычисляем 3 * A
mov eax, [a]
mov ebx, 3
mul ebx      ; Умножаем eax на ebx, результат в eax

ansv:
mov [ans],eax
mov eax,msg3
call sprint
mov eax,[ans]
call iprintLF
call quit
