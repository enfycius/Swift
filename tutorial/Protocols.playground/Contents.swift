protocol Saveable {
    var saveNeeded: Bool { get set }
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void)

}

struct PersonName {
    let givenName: String
    let middleName: String
    
    var familyName: String
    
    func fullName() -> String {
        return "\(givenName) \(middleName) \(familyName)"
    }
    
    mutating func change(familyName: String) {
        self.familyName = familyName
    }
}

class Person: Saveable {
    let birthName: PersonName
    
    var currentName: PersonName
    var countryOfResidence: String
    
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        // Send person information to remove database
        // Once remote save is complete, it calls saveComplete(Bool)
        // We'll fake it for the moment, and assume the save is complete.
        
        saveComplete(success: true)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

class Reminder: Saveable {
    var dateOfReminder: String      // There is a better way to store dates, but this suffice currently.
    
    var reminderDetail: String      // e.g. Ali's birthday
    
    init(date: String, detail: String) {
        dateOfReminder = date
        reminderDetail = detail
    }
    
    var saveHandler: ((Bool) -> Void)?
    var saveNeeded: Bool = true
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        
        // Send reminder information to remove database
        // Once remote save is complete, it calls saveComplete(success:Bool)
        // We'll fake it for the moment, and assume the save is complete.
        
        saveComplete(success: true)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
    
}

class SaveManager {
    func save(_ thingToSave: Saveable) {    // We can treat them in a common way.
        thingToSave.saveToRemoteDatabase { success in
            print("Saved! Success: \(success)")
        }
    }
}

let createPerson: (String, String, String) -> Person = { given, middle, family in
    
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    
    return person
}

let nick = createPerson("Nick", "Edward", "Moon")

let birthdayReminder = Reminder(date: "06/05/2023", detail: "Nick's Birthday")

let saveManager = SaveManager()

saveManager.save(nick)
saveManager.save(birthdayReminder)
