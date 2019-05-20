import UIKit

protocol ToDoList {
    func getHTML() -> String
}


// Leaf
class ToDo: ToDoList {
    let html: String
    init(text: String) {
        self.html = text
    }
    
    func getHTML() -> String {
        return self.html
    }
}


// Composite
class Project: ToDoList {
    let html: String
    let toDos: [ToDoList]
    
    init(text: String, arr: [ToDoList]) {
        self.html = text
        self.toDos = arr
    }
    
    func getHTML() -> String {
        var htmlString = "<ul><li>"
        htmlString = self.html + "<ul>"
        
        toDos.forEach {
            htmlString += "<li>"
            htmlString += $0.getHTML() // evo je rekurzija
            htmlString += "</li>"
        }
        
        htmlString += "</ul></li></ul>"
        return htmlString
    }
}
