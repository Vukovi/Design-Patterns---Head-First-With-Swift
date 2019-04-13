import UIKit

// Observer ce biti svi koji posmatraju promene
// Svaki objekat Observer-a ce imati u svom konstruktoru (ili drugacije) instancu Observable-a da bi znao koju informaciju treba da menja
protocol Observer {
    func update()
    var observerID: String { get set }
}

// Observable ili Subject ce da bude onaj koji emituje promene
protocol Observable {
    func add(observer: Observer)
    func remove(observer: Observer)
    func notify()
    var observers: [String: Observer] { get set }
}

protocol DisplayTemperature {
    func display()
}

class WeatherStation: Observable {
    
    // moram imati neku kolekciju gde cu da cuvam sve potpisnike
    var observers: [String : Observer] = [String : Observer]()
    
    func add(observer: Observer) {
        observers[observer.observerID] = observer
    }
    
    func remove(observer: Observer) {
        observers.removeValue(forKey: observer.observerID)
    }
    
    func notify() {
        observers.forEach {
            $0.value.update()
        }
    }
    
    // da bih potpisnicima imao sta predati kao update, moram im dati npr. merenje senzora
    func getTemperature() -> String {
        return "25"
    }
}


class Phone: Observer, DisplayTemperature {
    
    var observerID: String
    weak var station: WeatherStation?
    var displayInfo: String?
    
    func update() {
        displayInfo = station?.getTemperature()
        display()
    }
    
    func display() {
        if let info = displayInfo {
            print("Prikaz na telefonu \(observerID): TEMPERATURA JE \(info)")
        }
    }
    
    init(observerID: String, station: WeatherStation) {
        self.observerID = observerID
        self.station = station
    }
}

class Window: Observer, DisplayTemperature {
    
    var observerID: String
    weak var station: WeatherStation?
    var displayInfo: String?
    
    func update() {
        displayInfo = station?.getTemperature()
        display()
    }
    
    func display() {
        if let info = displayInfo {
            print("Prikaz na prozoru \(observerID): TEMPERATURA JE \(info)")
        }
    }
    
    init(observerID: String, station: WeatherStation) {
        self.observerID = observerID
        self.station = station
    }
}


let ws = WeatherStation()
let telefon1 = Phone(observerID: "p1", station: ws)
let telefon2 = Phone(observerID: "p2", station: ws)
let prozor1 = Window(observerID: "w1", station: ws)
let prozor2 = Window(observerID: "w2", station: ws)
let prozor3 = Window(observerID: "w3", station: ws)


ws.add(observer: telefon1)
ws.add(observer: telefon2)
ws.add(observer: prozor1)
ws.add(observer: prozor2)
ws.add(observer: prozor3)


ws.notify()
print("prva notifikacija gotova")

let observerToRemove: Observer = ws.observers[prozor3.observerID]!
ws.remove(observer: observerToRemove)

ws.notify()
print("druga notifikacija gotova")
