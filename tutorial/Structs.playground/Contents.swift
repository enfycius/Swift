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

var alissasName = PersonName(givenName: "Alissa", middleName: "May", familyName: "Jones")

let alissasBirthName = PersonName(givenName: "Alissa", middleName: "May", familyName: "Jones")

print(alissasBirthName.fullName())

var alissasCurrentName = alissasBirthName

print(alissasCurrentName.fullName())

alissasCurrentName.change(familyName: "Moon")

// Value-type semantics

print(alissasBirthName.fullName())
print(alissasCurrentName.fullName())

class Person {
    let birthName: PersonName
    
    var currentName: PersonName
    var countryOfResidence: String
    
    init(name: PersonName, countryOfResidence: String = "UK") {
        birthName = name
        currentName = name
        self.countryOfResidence = countryOfResidence
    }
    
    var displayString: String {
        return "\(currentName.fullName()) - Location: \(countryOfResidence)"
    }
}

var name = PersonName(givenName: "Alissa", middleName: "May", familyName: "Jones")

let alissa = Person(name: name)

print(alissa.currentName.fullName())

// alissa.birthName.change(familyName: "Moon")      Compile Error


