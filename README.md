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

## Adapter Pattern

Adapter patern pretvara interfejs klase u pogodan interfejs koji neka druga klasa ocekuje, on omogucuje da klase budu kompatibilne iako to zaista nisu. Adapter patern je ukrqtko receno wrapper.

Adapter pattern : UML
![Adapter pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/07%20Adapter%20Pattern/Adapter%20Pattern.png?raw=true)

## Proxy Pattern

Proxy Pattern obezbedjuje surogat ili neki drzac za odredjeni objekat, da bi se tom objektu moglo pristupiti. Postoje razni proxy patterni, npr virtualni, kesirani, remote, sigurnosni, sinhronizujuci, itd. Remote proxy sluzi kad hocu da pristupim nekom izvoru koji je na nekom drugom mestu (drugi modul, podatak na nekom serveru,…). Virtulani proxy kontrolise pristup objektu koji je skup za kreiranje (ovo moze biti kesiranje, primer sa Book Parserom). Protection proxy je menadzer pristupa, npr samo korisnici koji imaju odgovorajucu dozvolu mogu da pristupe pravom objektu.

Proxy pattern : UML
![Proxy pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/08%20Proxy%20Pattern/Proxy%20Pattern.png?raw=true)

## Bridge Pattern

Bridge Pattern ima namenu da rasclani funkcionalnost na apstrakciju i implementaciju, tako da se dobiju dva nezavisna dela koda koji se isto tako nezavisno mogu menjati.

Bridge pattern : UML
![Bridge pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/09%20Bridge%20Pattern/Bridge%20Pattern.png?raw=true)

## Template Method Pattern

Template Method Pattern definise kostur algoritma operacija, ostavljajuci neke korake algoritma subklasama na razradu uz mogucnost da izmene te korake ali tako da ne menjaju kostur algoritma.

Template Method pattern : UML
![Template Method pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/10%20Template%20Method%20Pattern%20/Template%20Method%20Pattern.png?raw=true)

## Composite Pattern

Composite pattern omogucava da se seriji obejkata naprave izmene kao sto su izmene koje bi mogle da se primene na pojedinacni objekat. Time se postize mogucnost da se ne vodi racuna da li si u kompozitnom delu ili zavrsnom delu (leaf-u). 
Composite pattern je drvo strukture, tako da delovi strukture predstavljaju istovremeno i celine i delove ukupne hijerarhije drveta, a omogucava se interakcija sa pojedinacnim objektima na isti nacin kao i sa familijom objekata.

S O L ( I ) D
Klijenti ne treba da budu obavezni da se podvrgajvaju interfejsu koji ima metode koje konkretni klijent ne koristi.

Composite pattern : UML
![Composite pattern](https://github.com/Vukovi/Design-Patterns---Head-First-With-Swift/blob/master/11%20Composite%20Pattern/Composite%20Pattern.png?raw=true)
