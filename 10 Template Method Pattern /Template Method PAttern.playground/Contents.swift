import UIKit

protocol Record {
    func templateMethod_SaveRecord()
    func beforeSave()
    func afterSave()
}

extension Record {
    func templateMethod_SaveRecord() {
        self.beforeSave()
        print("Sada se obavlja cuvanje u bazi")
        self.afterSave()
    }
}

class User: Record {
    func beforeSave() {
        print("User pre cuvanja u bazi")
    }
    
    func afterSave() {
        print("User posle cuvanja u bazi")
    }
}

let user = User()
user.templateMethod_SaveRecord()
