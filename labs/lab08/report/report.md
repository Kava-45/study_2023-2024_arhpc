---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Программирование цикла. Обработка аргументов командной строки."
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

Приобретение навыков написания программ с использованием циклов и обработкой аргументов командной строки

# Выполнение лабораторной работы

Для начала создадим файл lab8-1.asm.

![01](01.png)

Далее запускаем Midnight commander через команду mc теперь вставляем в ранее созданный файл код из листинга 8.1. Он должен запускать цикл и выводить каждую итерацию числа , на единицу меньше предыдущего.

![02](02.png)

Копируем файл in_out.asm, чтобы собирать файл.

![03](03.png)

Теперь собираем программу и запускаем.

![04](04.png) 

Как видим, она выводит числа от N до единицы включительно. Теперь пробуем изменить код, чтобы в цикле также отнималась единица.

![05](05.png)

Собираем файл и запускаем ее.

![06](06.png)

Введём в качестве N число 5 и посмотрим на результат выполнения.

![07](07.png)

Цикл выполняется бесконечно,если входные число нечетное, потому что условие остановки циклы ecx=0 никогда не будет достигнуто Это происходит из-за того, что регистр ecx уменьшается на 2 за каждую интеграцию. Если же входное число четное то цикл выполняется N/2 раз выводя числа в порядке убаввания от N-1 до 1 с шагом 2.

![08](08.png)

Теперь пробуем изменить программу так, чтобы она сохраняла значение регистра ecx в стек.

![09](09.png)

Пробуем собрать и запустить программу.

![10](10.png) 

Теперь программа выводит все числа от N-1 до нуля, далее создаем второй файл.

![11](11.png) 

Затем вставляем код из файла листинга 8.2

![12](12.png) 

Соберем и запустим его указав некоторые аргументы.

![13](13.png) 

Создадим третий файл.

![14](14.png) 

И вставляем в него код из листинга 8.3. Данная программа находит сумму всех аргументов.

![15](15.png) 

Теперь собираем файл и запускаем его.

![16](16.png) 

Как видим программа выводит сумму всех аргументов.Изменим её так, чтобы она находила не сумму, а произведение всех аргументов

![17](17.png) 

Собираем программу и запускаем ее.

![18](18.png) 
 
Как выдим программа выведет правильныей ответ.

# Выполнение задания для самостоятельной работы 

Для выполнения сомастоятельной работы создадим файл в формате .asm

![19](19.png) 

В рамках самостоятельной работы необходимо сделать задание под вариантом 10. Там, необходимо сложить результаты выполнения функции f(x)=5(2+x) для всех введённых аргументов.

![20](20.png) 

Собираем и запускаем программу, вводя различные аргументы.

![21](21.png)
 
Пересчитав результат вручную, убеждаемся что программа работает верно.

# Выводы

В результате выполнения лабораторной работы я приобрел навыки написания программ с использованием циклов и обработкой аргументов командной строки.

