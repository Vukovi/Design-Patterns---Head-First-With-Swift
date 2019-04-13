import UIKit

// Product
protocol Alerts {
    func show()
}

// Konkretna familija Produkata
class AlertMacOS: Alerts {
    func show() {
        print("Ovo je alert prozor na MAC-u")
    }
}

class AlertWindows: Alerts {
    func show() {
        print("Ovo je alert prozor na Windows-u")
    }
}

class AlertLinux: Alerts {
    func show() {
        print("Ovo je alert prozor na Linux-u")
    }
}




// Product
protocol Buttons {
    func show()
}

// Konkretna familija Produkata
class ButtonMacOS: Buttons {
    func show() {
        print("Ovo je button na MAC-u")
    }
}

class ButtonWindows: Buttons {
    func show() {
        print("Ovo je button na Windows-u")
    }
}

class ButtonLinux: Buttons {
    func show() {
        print("Ovo je button na Linux-u")
    }
}



// Abstract Factory
protocol AbstractFactory {
    func makeAlerts() -> Alerts
    func makeButtons() -> Buttons
}

// Konkretna familija fabrika
class MacOSFactory: AbstractFactory {
    func makeAlerts() -> Alerts {
        let alertMacOS = AlertMacOS()
        return alertMacOS
    }
    
    func makeButtons() -> Buttons {
        let buttonMacOS = ButtonMacOS()
        return buttonMacOS
    }
}

class WindowsFactory: AbstractFactory {
    func makeAlerts() -> Alerts {
        let alertWindows = AlertWindows()
        return alertWindows
    }
    
    func makeButtons() -> Buttons {
        let buttonWindows = ButtonWindows()
        return buttonWindows
    }
}

class LinuxFactory: AbstractFactory {
    func makeAlerts() -> Alerts {
        let alertLinux = AlertLinux()
        return alertLinux
    }
    
    func makeButtons() -> Buttons {
        let buttonLinux = ButtonLinux()
        return buttonLinux
    }
}


// Implementacija

let macOS = MacOSFactory()
let windows = WindowsFactory()
let linux = LinuxFactory()


let macOSAlert = macOS.makeAlerts()
let macOSButton = macOS.makeButtons()
macOSAlert.show()
macOSButton.show()


let windowsAlert = windows.makeAlerts()
let windowsButton = windows.makeButtons()
windowsAlert.show()
windowsButton.show()


let linuxAlert = linux.makeAlerts()
let linuxButton = linux.makeButtons()
linuxAlert.show()
linuxButton.show()
