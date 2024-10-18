%include 'in_out.asm'
SECTION .data
msg: DB 'Выражение для вычисдения 5(x+18)-28 ',0
msg2: DB 'Введите x: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, msg
call sprintLF
mov eax, msg2
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, 'eax=x'
add eax, 18
mov ebx, 5
mul ebx
sub eax, 28
call iprintLF
call quit
