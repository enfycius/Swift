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

class Person {
    let birthName: PersonName
    var currentName: PersonName
    var countryOfResidence: String
    var saveHandler: ((Bool) -> Void)?
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    func saveToRemoteDatabase(handler: @escaping (Bool) -> Void) {
        saveHandler = handler
        
        saveComplete(success: true)
    }
    
    func saveComplete(success: Bool) {
        saveHandler?(success)
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

// No input, no output
let printAuthorsDetails: () -> Void = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")

    let author = Person(name: name)
    
    print(author.displayString)
}

printAuthorsDetails()

// No input, Person output
let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    
    let author = Person(name: name)
    
    return author
}

let author = createAuthor()

print(author.displayString)

// String inputs, no output
let printPersonsDetails: (String, String, String) -> Void = { given, middle, family in
    
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    
    let person = Person(name: name)
    
    print(author.displayString)
}

printPersonsDetails("Kathleen", "Mary", "Moon")

// String inputs, Person output
let createPerson: (String, String, String) -> Person = { given, middle, family in
    
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    
    let person = Person(name: name)
    
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")

print(felix.displayString)

let fox = createPerson("Fox", "Richard", "Moon")

fox.saveToRemoteDatabase() { success in
    print("Saved finished. Successful: \(success)")
}
