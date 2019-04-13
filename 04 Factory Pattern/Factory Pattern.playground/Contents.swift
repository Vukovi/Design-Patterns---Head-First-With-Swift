import UIKit

// PRODUCT
protocol Vozilo {
    func kreni()
}

// Concrete Product
class Auto: Vozilo {
    func kreni() {
        print("Auto krece!")
    }
}
// Concrete Product
class Kamion: Vozilo {
    func kreni() {
        print("Kamion krece!")
    }
}
// Concrete Product
class Autobus: Vozilo {
    func kreni() {
        print("Autobus krece!")
    }
}

// CREATOR
protocol VoziloFactory{
    func napraviVozilo() -> Vozilo
}

// Concrete Creator
class AutoFactory: VoziloFactory {
    func napraviVozilo() -> Vozilo {
        return Auto()
    }
}
// Concrete Creator
class KamionFactory: VoziloFactory {
    func napraviVozilo() -> Vozilo {
        return Kamion()
    }
}
// Concrete Creator
class AutobusFactory: VoziloFactory {
    func napraviVozilo() -> Vozilo {
        return Autobus()
    }
}

// implementacija
let auto = AutoFactory().napraviVozilo()
let autobus = AutobusFactory().napraviVozilo()
let kamion = KamionFactory().napraviVozilo()

auto.kreni()
autobus.kreni()
kamion.kreni()
