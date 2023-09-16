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

//class Person {
//    let birthName: PersonName
//
//    var currentName: PersonName
//    var countryOfResidence: String
//
//    init(name: PersonName, countryOfResidence: String = "UK") {
//        birthName = name
//        currentName = name
//        self.countryOfResidence = countryOfResidence
//    }
//
//    var displayString: String {
//        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
//    }
//}

class Person {
    let birthName: PersonName
    
    var currentName: PersonName
    var countryOfResidence: String
    
    var saveHandler: ((Bool) -> Void)?
    
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

// No input, no output

let printAuthorsDetails: () -> Void = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)

    print(author.displayString)
}

// No input, Person output

let createAuthor: () -> Person = {
    let name = PersonName(givenName: "Keith", middleName: "David", familyName: "Moon")
    let author = Person(name: name)
    
    return author
}

let author = createAuthor()     // The type of constant can be inferred.

print(author.displayString)

// String inputs, no output

let printPersonDetails: (String, String, String) -> Void = { given, middle, family in
    
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    
    let author = Person(name: name)
    
    print(author.displayString)
}

printPersonDetails("Kathleen", "Mary", "Moon")
    
// String inputs, Person output

let createPerson: (String, String, String) -> Person = { given, middle, family in
    
    let name = PersonName(givenName: given, middleName: middle, familyName: family)
    let person = Person(name: name)
    
    return person
}

let felix = createPerson("Felix", "Robert", "Moon")

print(felix.displayString)

//let fox = createPerson("Fox", "Richard", "Moon")
//
//fox.saveToRemoteDatabase(handler: {success in
//    print("Saved finished. Successful: \(success)")
//})


// Trailing closure

let fox = createPerson("Fox", "Richard", "Moon")

fox.saveToRemoteDatabase() { success in
    print("Saved finished. Successful: \(success)")
}
