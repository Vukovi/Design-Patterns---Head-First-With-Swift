import UIKit

// razdvajam apstrakciju od implementacije

// implementacija

protocol Resources {
    func getSnippet() -> String
    func getTitle() -> String
    func getImage() -> String
}

struct ArtistModel {
    
    var biography: String = "Biografija umetnika...."
    var name: String = "Ime umetnika"
    var image: String = "Slika umetnika"

}

class ArtistResource: Resources {
    var artist: ArtistModel
    init(artist: ArtistModel) {
        self.artist = artist
    }
    
    func getSnippet() -> String {
        print(artist.biography)
        return artist.biography
    }
    
    func getTitle() -> String {
        print(artist.name)
        return artist.name
    }
    
    func getImage() -> String {
        print(artist.image)
        return artist.image
    }
}

struct BookModel {
    var synopsis: String = "Sinopsis knjige na koricama knjige..."
    var naslov: String = "Naziv knjige"
    var image: String = "Slika korica knjige"
}

class BookResource: Resources {
    var book: BookModel
    init(book: BookModel) {
        self.book = book
    }
    
    func getSnippet() -> String {
        print(book.synopsis)
        return book.synopsis
    }
    
    func getTitle() -> String {
        print(book.naslov)
        return book.naslov
    }
    
    func getImage() -> String {
        print(book.image)
        return book.image
    }
}


// apstrakcija

protocol Views {
    init(resource: Resources)
    var resource: Resources { get }
    func show()
}

class LongFormView: Views {
    required init(resource: Resources) {
        self.resource = resource
    }
    
    var resource: Resources
    
    func show() {
        self.resource.getSnippet()
        self.resource.getImage()
        self.resource.getTitle()
    }
}

class ShortFormView: Views {
    required init(resource: Resources) {
        self.resource = resource
    }
    
    var resource: Resources
    
    func show() {
        // ovaj ima kraci prikaz tako da su tu samo slika i naslov npr.
        self.resource.getImage()
        self.resource.getTitle()
    }
}

class ThumbnailFormView: Views {
    required init(resource: Resources) {
        self.resource = resource
    }
    
    var resource: Resources
    
    func show() {
        // ovaj ima najkraci prikaz tako da se samo slika prikazuje
        self.resource.getImage()
    }
}

// Koriscenje Bridge Patterna

// imam resurse na jednoj strani
let artist = ArtistResource(artist: ArtistModel(biography: "Sarajevski bend", name: "Indeksi", image: "SlikaIndeksa.jpg"))
let book = BookResource(book: BookModel(synopsis: "Zivot u bosanskoj kasabi tokom 17. veka", naslov: "Tvrdjava", image: "SlikaTvrdjava.jpg"))

// imam apstrakcije na drugoj strani kojima cu formirati UI, i to 6 razlicita UI-ja --> 3 klase apstrakcije X 2 klase implementacije
// i bridge pattern mi je pomogao da sa 5 klasa zavrsim posao za 6 klasa; da sam imao 3 apstrakcije i 3 implementacije, to bi mi zavrsilo posao 9 regularnih klasa
let longArtistView = LongFormView(resource: artist)
longArtistView.show()

let longBookView = LongFormView(resource: book)
longBookView.show()

let shortArtistView = ShortFormView(resource: artist)
shortArtistView.show()

let shortBookView = ShortFormView(resource: book)
shortBookView.show()

let thumbanilArtistView = ThumbnailFormView(resource: artist)
thumbanilArtistView.show()

let thumbnailBookView = ThumbnailFormView(resource: book)
thumbnailBookView.show()

