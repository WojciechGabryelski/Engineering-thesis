# Combinatorics of formal languages

Author: Wojciech Gabryelski

Supervisor: Jacek Cichoń

## Abstract
This work is devoted to the problem of counting words of a given length that belong to a regular language defined by a regular expression. The methods discussed here allow us to derive a compact formula for the number of words of length $n$ from a given regular language for all natural numbers $n$ using techniques related to analytical combinatorics. The tools implemented and described here can be used to study the impact of restrictions imposed on passwords in various IT systems on the number of passwords of a given length that can be entered, and thus on the difficulty of cracking the password. This work describes all the concepts from the fields of analytical combinatorics and formal languages that are necessary to understand the main part of this work and includes references to the literature describing in detail the issues mentioned here.

## Implementation
The implemented software is designed to determine, for a given regular expression, a rational function whose power series expansion coefficients centered at 0 specify the number of words of the considered language of a given size.

Requirements:
 - C++ version 11 or higher
 - GNU Multiple Precision Arithmetic Library (GMP)

The program is compiled using the make command.

Running the program:
 - Windows: main.exe
 - Linux: ./main

# Kombinatoryka języków formalnych

Autor: Wojciech Gabryelski

Promotor: Jacek Cichoń

## Streszczenie
Praca ta jest poświęcona problemowi zliczania słów zadanej długości należących do języka regularnego generowanego przez wyrażenie regularne. Omówione tu metody pozwalają wyznaczyć zwarty wzór na liczbę słów długości $n$ z danego języka regularnego dla wszystkich liczb naturalnych $n$ przy użyciu technik  z kombinatoryki analitycznej. Zaimplementowane i opisane tu narzędzia mogą być wykorzystane do badania wpływu ograniczeń narzuconych na hasła w różnych systemach informatycznych na liczbę możliwych do wprowadzenia haseł danej długości, a tym samym na trudność złamania hasła. W pracy tej opisane są wszystkie pojęcia z dziedzin kombinatoryki analitycznej i języków formalnych niezbędne do zrozumienia głównej części pracy oraz zawarte są odniesienia do literatury szczegółowo opisującej wspomniane tu zagadnienia.

## Implementacja
Zaimplementowane oprogramowanie przeznaczone jest do wyznaczania dla danego wyrażenia regularnego funkcji wymiernej, której współczynniki rozwinięcia w szereg potęgowy o środku w punkcie 0 wyznaczają liczbę słów rozważanego języka o danym rozmiarze.

Wymagania:
 - C++ wersja 11 lub wyżej
 - GNU Multiple Precision Arithmetic Library (GMP)

Kompilacja programu odbywa się za pomocą polecenia make.

Uruchamianie programu:
 - Windows - main.exe
 - Linux   - ./main
