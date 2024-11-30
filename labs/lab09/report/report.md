---
## Front matter
title: "Лабораторная работа №9"
subtitle: "Понятие подпрограммы.Отладчик GDB."
author: "Казначеев Сергей Ильич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобретение навыков написания программ с использованием подпрограмм. Знакомство с методами отладки при помощи GDB и его основными возможностями.

# Выполнение лабораторной работы

Для начала создадим папку и файл lab9-1.asm

![01](image/01.png)

Далее, запустим Midnight commander и копируем файл in_out.asm.

![02](image/02.png)

Вставляем в файл lab9-1.asm код из листинга 9.1

![03](image/03.png)

Собираем программу и проверяем её на корректность работы 

![04](image/04.png)

Теперь изменим файл так, чтобы внутри подпрограммы была ещё одна подпрограмма, вычисляющая значение g(x) и чтобы она передавала значение в первую подпрограмму, которая бы уже вычислила значение f(g(x))

![05](image/05.png)

Собираем и проверяем

![06](image/06.png)

Создаем второй файл 

![07](image/07.png)

И вставляем код из листинга 9.2

![08](image/08.png)

Соберем программу следующим образом

![09](image/09.png)

Теперь загружаем ее в gdb

![10](image/10.png)

Запускаем ее с помощью команды run

![11](image/11.png)

Создадим брейкпоинт на метке _start с помощью команды break 

![12](image/12.png)

С помощью команды disassemble дизассемблируем её

![13](image/13.png)

Переключаем вывода синтекса на intel

![14](image/14.png)

Повторяем команду disassemble

![15](image/15.png)

Включаем графическое отображение кода

![16](image/16.png)

Теперь включаем графическое отображение значений регистров

![17](image/17.png)

Выводим всю информацию о всех брейкпоинтах

![18](image/18.png)

Создаем брейкпоинт по адресу 

![19](image/19.png)

Выводим информацию 

![20](image/20.png)

Теперь 5 раз выполняем команду si для построчного выполнения кода

![21](image/21.png)

Как видим, поменялись значения регистров eax, ecx, edx и ebx. Теперь выведем информацию о значениях регистров

![22](image/22.png)

Выводим значения переменной по имени.

![23](image/23.png)

Теперь по адресу

![24](image/24.png)

Теперь меняем первый символ 

![25](image/25.png)

Меняем второй символ 

![26](image/26.png)

Меняем несколько символов второй переменной

![27](image/27.png)

Выводим значения регистра  в строковом,двоичном и шестнадцатиричном виде 

![28](image/28.png)

Пробуем изменить значения регистра 

![29](image/29.png)

Мы увидим что в регистр записались разные значения, это связано с тем, что в одном случае мы записываем в него число, а в другом случае строчку. Завершаем программу с помощью  команды continue и выйдем.

![30](image/30.png)

![31](image/31.png)

Копируем файл 

![32](image/32.png)

Соберём его и вгрузим в gdb

![33](image/33.png)

Создадим брейкпоинт и запустим программу 

![34](image/34.png)

Выведем значение регистра esp, где хранятся данные о стеке

![35](image/35.png)

ВЫведем значения всех элементов стека 

![36](image/36.png)

Как видим, для вывода каждого элемента стека нам нужно менять значение адреса с шагом 4. Это связано с тем, что именно с шагом 4 располагаются данные в стеке.

# Выполнение заданий для самостоятельной работы 

Копируем файл первого задания прошлой самостоятельной работы 

![37](image/37.png)

Переписываем так, чтобы он использовался для авчисления выражения подпрограммы

![38](image/38.png)

Собираем и проверяем на корректность выполнения.


![39](image/39.png)

Создадим файл второго задания самостоятельной работы

![40](image/40.png)

Далее вставляем код из листинга 9.3

![41](image/41.png)

Собираем и запускуаем 

![42](image/42.png)

Как видим, код считает значение выражения неправильно. Загрузим его в gdb.

![43](image/43.png)

Включеним графическое отображение значений регистров и отображение графического отображения кода.

![44](image/44.png)

Устанавливаем брейкпоинт на _start 

![45](image/45.png)

Запускаем и начинаем построчно выполнять код

![46](image/46.png)

![47](image/47.png)

Как видим, мы должны были умножить значение регистра ebx, но умножили регистр eax. Нам необходимо все результаты хранить в регистре eax. Изменим код

![48](image/48.png)

И проверяем на корректность выполнения.

![49](image/49.png)

Как видим, теперь код работает корректно

# Выводы
После выполнения лабораторной работы. Я приобрел навыки программ с использованием подпрограмм и познакомился с методами отладки при помощи GDB и его основными возможностями 
