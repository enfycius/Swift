protocol Saveable {
    var saveNeeded: Bool { get set }
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)
}

class Person: Saveable {
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        
        saveComplete(success: true)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
}

let test: Person = Person()

test.saveToRemoteDatabase() { success in
        print("Printed: \(success)")
}
