import UIKit

protocol Target {
    func request()
}

class Adaptee {
    func specificRequest() {
        print("Ovo je neka metoda iz nekog nekompatibilnog thrid-party library-ja ili nesto sto treba da bude depraceted")
    }
}

class Adapter: Target {
    let adaptee: Adaptee
    // ukoliko je specificRequest iz Adaptee-ja static onda cu mu direktno pristupiti preko njegove klase i onda nema smisla ovakav kontruktor
    init(adaptee: Adaptee) {
        self.adaptee = adaptee
    }
    
    func request() {
        self.adaptee.specificRequest()
    }
}

// mesto gde mi treba specificRequest, tj mesto gde se koristi adapter
class Client {
    
    func useAdapting() {
        let adaptee = Adaptee()
        let target: Target = Adapter(adaptee: adaptee)
        target.request()
    }

}

let client = Client()
client.useAdapting()
