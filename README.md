# Design-Patterns---Head-First-With-Swift

## This is book named: "Head First Design Patterns: A Brain-Friendly Guide", with design patterns that i wrote in Swift instead C# and Java that is used in this book.

## Strategy Pattern

Strategy pattern predstavlja familiju alogitama, enkapsulira svaki pojedinacno ali ih i cini medjosbno inter-operabilnim. 
Strategy omogucava da su algoritmi nezavisni i da se razlikuju od zavisnosti od klijenata koji ih koriste.

Strategy pattern : UML
![Strategy pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/01%20Strategy%20Pattern/Strategy%20Pettern.png?raw=true)

## Observer Pattern

Observer pattern definise 1 na N zavisnosti izmedju objekata tako da kad jedan objekat promeni svoje stanje, svi zavisni objekti budu obavesteni o tome i azurairani automatski.

Observer pattern : UML
![Observer pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/02%20Observer%20Pattern/Observer%20Pattern.png?raw=true)

## Decorator Pattern

Dekorator pattern dinamicki dodaje dodatne funkcionalnosti objektu i pruza fleksibilnu alternativu nasledjivanju upravo radi prosirivanja funkcionalnosti.

Decorator pattern : UML
![Decorator pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/03%20Decorator%20Pattern/Decorator%20Pattern.png?raw=true)

## Factory Pattern

Factory Method Pattern definise interfejs za kreiranje objekta, ali prepusta subklasama da odaberu koji objekat ce instancirati. On omogucavama nadklasama da instanciranje prepuste podklasama

Simple Factory nije Design Pattern, vec idiom (osobenost) programiranja i cesto se zbog slicnosti mesa sa Factory Patternom.

Factory pattern : UML
![Factory pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/04%20Factory%20Pattern/Factory%20Pattern.png?raw=true)

## Abstract Factory Pattern

Abstract Factory obezbedjuje interfejs za kreiranje familije poveanih ili medjuzavisnih objekata bez specificiranja njihovih konkretnih klasa.

Abstract Factory pattern : UML
![Abstract Factory pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/05%20Abstract%20Factory%20Pattern/Abstract%20Factory%20Pattern.png?raw=true)

## Command Pattern

Command Pattern enkapsulira request kao objekat, tako da dozvoljava da se objektima moze manipulisati pomocu raznih parametara kao sto su razliciti requestovi, redosledi (redovi) ili log requestovi, a podrzava i prekidanje operacija drugom ili istom operacijom.

Command pattern : UML
![Command pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/06%20Command%20Pattern/Command%20Pattern.png?raw=true)
