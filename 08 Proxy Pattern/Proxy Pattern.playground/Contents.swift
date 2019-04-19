import UIKit

// Kesirani proxy

protocol BookParsing {
    func getNumberOfPages() -> Int?
}

class BookParser: BookParsing {
    func getNumberOfPages() -> Int? {
        // vraca broj strana prema duzini teksta, npr 250
        return 250
    }
    
    init(book: String) {
        // neka skupa funkcionalnost npr ucitavanje iz baze
        // ili obrada celokupnog teksta knjige
        // ili skidanje sa neta, a zatim parsiranje radi inicijalizacije
    }
}

class LazyBookParserProxy: BookParsing {
    private var bookParser: BookParser? = nil
    var book: String
    
    init(book: String) {
        self.book = book
    }
    // dakle ovaj proxy ne trosi skupu akciju kad mu ona ne treba
    // skupu akciju, a to je ovde inicijalizacija BookParsera
    // uradi onda kad mu prvi put treba jeftina akcija u vidu
    // metode koja vraca broja stranica knjige
    func getNumberOfPages() -> Int? {
        if self.bookParser == nil {
            self.bookParser = BookParser(book: self.book)
            return bookParser!.getNumberOfPages()
        } else {
            return nil
        }
    }
}

// let bp = BookParser(book: "Celokupni tekst knjige") // ovo ne treba da instanciram jer sam upravo to skupo instanciranje hteo da izbegnem
let bpProxy = LazyBookParserProxy(book: "Celokupni tekst knjige")
bpProxy.getNumberOfPages()


// Virtualni proxy

class Korisnik {
    let id = "123"
}

protocol ProtokolServera {
    func odobriPristup(korisnik: Korisnik)
    func zabraniPristup(korisnik: Korisnik)
}

class PraviServer: ProtokolServera {
    func odobriPristup(korisnik: Korisnik) {
        print("Pristup je dozovljen korisniku sa id brojem: \(korisnik.id).")
    }
    
    func zabraniPristup(korisnik: Korisnik) {
        print("Pristup korisniku sa id brojem: \(korisnik.id) je zabranjen.")
    }
}

class ProxyKopijaServera: ProtokolServera {
    lazy private var praviServer = PraviServer()
    
    func odobriPristup(korisnik: Korisnik) {
        praviServer.odobriPristup(korisnik: korisnik)
    }
    
    func zabraniPristup(korisnik: Korisnik) {
        praviServer.zabraniPristup(korisnik: korisnik)
    }
    
}

let korisnik = Korisnik()
// koristim zamenski server, tj virtualni
let proxyKopijaServera = ProxyKopijaServera()
proxyKopijaServera.odobriPristup(korisnik: korisnik)
proxyKopijaServera.zabraniPristup(korisnik: korisnik)



// Sigurnosni proxy

class User {
    let name = "Vuk"
    let password = "123"
}

protocol ServerProtocol {
    func grantAccess(user: User)
}

class Server: ServerProtocol {
    func grantAccess(user: User) {
        print("Access granted to user with name: \(user.name).")
    }
}

class ServerProxy: ServerProtocol {
    private var server: Server!
    
    func grantAccess(user: User) {
        guard server != nil else {
            print("Access forbidden!")
            return
        }
        
        server.grantAccess(user: user)
    }
    
    
    func authorize(user: User) {
        guard user.password == "123" else {
            return
        }
        print("User authorized!")
        server = Server()
    }
    
}

let user = User()
let proxyServer = ServerProxy()

proxyServer.grantAccess(user: user) // Access forbidden!
proxyServer.authorize(user: user)
proxyServer.grantAccess(user: user) // Access granted to user with name: Vuk.
