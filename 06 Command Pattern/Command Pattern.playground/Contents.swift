import UIKit

protocol Command {
    func execute()
    func unexecute()
}

class LightReceiver {
    func on() {
        print("Ukljuci svetlo")
    }
    
    func off() {
        print("Ukljuci svetlo")
    }
    
    func up() {
        print("Povecaj osvetljenje za 1 stepen")
    }
    
    func down() {
        print("Smanji osvetljenje za 1 stepen")
    }
}



class LightOnCommand: Command {
    
    var light: LightReceiver
    init (light: LightReceiver) {
        self.light = light
    }
    
    func execute() {
        self.light.on()
    }
    
    func unexecute() {
        self.light.off()
    }
}

class LightOffCommand: Command {
    
    var light: LightReceiver
    init (light: LightReceiver) {
        self.light = light
    }
    
    func execute() {
        self.light.off()
    }
    
    func unexecute() {
        self.light.on()
    }
}

class LightUpCommand: Command {
    
    var light: LightReceiver
    init (light: LightReceiver) {
        self.light = light
    }
    
    func execute() {
        self.light.up()
    }
    
    func unexecute() {
        self.light.down()
    }
}

class LightDownCommand: Command {
    
    var light: LightReceiver
    init (light: LightReceiver) {
        self.light = light
    }
    
    func execute() {
        self.light.down()
    }
    
    func unexecute() {
        self.light.up()
    }
}





class DaljinacInvoker {
    var on: Command
    var off: Command
    var up: Command
    var down: Command
   
    init(on: Command, off: Command, up: Command, down: Command) {
        self.on = on
        self.off = off
        self.up = up
        self.down = down
    }
    
    func clickOn() {
        on.execute()
    }
    
    func clickOff() {
        off.execute()
    }
    
    func clickUp() {
        up.execute()
    }
    
    func clickDown() {
        down.execute()
    }
}




let sijalica = LightReceiver()

let onCommand = LightOnCommand(light: sijalica)
let offCommand = LightOffCommand(light: sijalica)
let upCommand = LightUpCommand(light: sijalica)
let downCommand = LightDownCommand(light: sijalica)

let daljinac = DaljinacInvoker(on: onCommand, off: offCommand, up: upCommand, down: downCommand)
daljinac.clickOn()
daljinac.clickUp()
daljinac.clickDown()
daljinac.clickOff()

