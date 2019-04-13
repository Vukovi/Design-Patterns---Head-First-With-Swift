import UIKit

protocol TopliNapitak {
    func cena() -> Int
}

class Espreso: TopliNapitak {
    func cena() -> Int {
        return 1
    }
}

let espreso = Espreso()

protocol DodaciKafiDecorator: TopliNapitak {
    func cena() -> Int
}

class KaramelaDekorator: DodaciKafiDecorator {
    let TopliNapitak: TopliNapitak
    init(TopliNapitak: TopliNapitak) {
        self.TopliNapitak = TopliNapitak
    }
    
    func cena() -> Int {
        return self.TopliNapitak.cena() + 2
    }
}

class SojinoMlekoDekorator: DodaciKafiDecorator {
    let TopliNapitak: TopliNapitak
    init(TopliNapitak: TopliNapitak) {
        self.TopliNapitak = TopliNapitak
    }
    func cena() -> Int {
        return self.TopliNapitak.cena() + 1
    }
}

let espresoSaKaramelom = KaramelaDekorator(TopliNapitak: espreso)
espresoSaKaramelom.cena() // 3

let espresoSaSojinimMlekom = SojinoMlekoDekorator(TopliNapitak: espreso)
espresoSaSojinimMlekom.cena() // 2

let espresoSaKaramelomISojinimMlekom = KaramelaDekorator(TopliNapitak: espresoSaSojinimMlekom)
espresoSaKaramelomISojinimMlekom.cena() // 4
