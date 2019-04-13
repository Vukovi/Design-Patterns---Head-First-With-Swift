import UIKit

// Strategy Pattern

protocol LetenjeBehavior {
    func leti() -> String
}

protocol CvrkutanjeBehavior {
    func cvrkuce() -> String
}

class Ptica {
    var letenje: LetenjeBehavior
    var cvrkutanje: CvrkutanjeBehavior
    
    init(letenje: LetenjeBehavior, cvrkutanje: CvrkutanjeBehavior) {
        self.letenje = letenje
        self.cvrkutanje = cvrkutanje
    }
    
    func letiExecute() -> String {
        return letenje.leti()
    }
    
    func crvkuceExecute() -> String {
        return cvrkutanje.cvrkuce()
    }
}

// Kombinacija klasa i razdvajanje algoritma za LetenjeBehavior

class BezLetenja: LetenjeBehavior {
    func leti() -> String {
        return "Ne moze leteti."
    }
}

class SaLetenjem: LetenjeBehavior {
    func leti() -> String {
        return "Moze leteti."
    }
}

// Kombinacija klasa i razdvajanje algoritma za CvrkutanjeBehavior

class BezCvrkutanja: CvrkutanjeBehavior {
    func cvrkuce() -> String {
        return "Ne moze cvrkutati."
    }
}

class CvrkutanjeKaoGugutanje: CvrkutanjeBehavior {
    func cvrkuce() -> String {
        return "Gugutanje..."
    }
}

class CvrkutanjeKaoPevanje: CvrkutanjeBehavior {
    func cvrkuce() -> String {
        return "Slavujeva pesma..."
    }
}

// Umesto da sam pravio nasledjivanja i pravio klase Pingvin, Golub i Slavuj
// sad cu da napravim samo objekte Ptice koji ce predstavljati ove tri razlicite ptice
// sa razlicitim kombinacijama Crvkutanja i Pevanja - Strategy Pattern

let pingvin = Ptica(letenje: BezLetenja(), cvrkutanje: BezCvrkutanja())
let slavuj = Ptica(letenje: SaLetenjem(), cvrkutanje: CvrkutanjeKaoPevanje())
let golub = Ptica(letenje: SaLetenjem(), cvrkutanje: CvrkutanjeKaoGugutanje())

print("Pingvin: \(pingvin.crvkuceExecute()), \(pingvin.letiExecute())")
print("Cuje se: \(slavuj.crvkuceExecute()), i slavuj \(slavuj.letiExecute())")
print("Cuje se: \(golub.crvkuceExecute()), i golub \(golub.letiExecute())")
