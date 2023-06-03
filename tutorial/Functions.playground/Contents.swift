func fullName(givenName: String, middleName: String, familyName: String) -> String {        // Camel Case, Pure Function
    return "\(givenName) \(middleName) \(familyName)"
}

let myFullName = fullName(givenName: "Keith", middleName: "David", familyName: "Moon")

print(myFullName)

func printFullName(givenName: String, middleName: String, familyName: String) {
    print("\(givenName) \(middleName) \(familyName)")
}

printFullName(givenName: "Keith", middleName: "David", familyName: "Moon")

func authorsFullName() -> String {
    return fullName(givenName: "Keith", middleName: "David", familyName: "Moon")
}

let authorOfThisBook = authorsFullName()

func printAuthorsFullName() {
    let author = authorsFullName()

    print(author)
}

printAuthorsFullName()

func fullName2(givenName: String, middleName: String, familyName: String = "Moon") -> String {
    return "\(givenName) \(middleName) \(familyName)"
}

let keith = fullName2(givenName: "Keith", middleName: "David")
let alissa = fullName2(givenName: "Alissa", middleName: "May")
let laura = fullName2(givenName: "Laura", middleName: "May", familyName: "Jones")

print(keith)
print(alissa)
print(laura)

func combine(_ givenName: String, _ familyName: String) -> String {     // Anonymous Parameter Labels
    return "\(givenName) \(familyName)"
}

func combine(_ integer1: Int, _ integer2: Int) -> Int {
    return integer1 + integer2
}

let combinedString = combine("Finnley", "Moon")
let combinedInt = combine(5, 10)

print(combinedString)
print(combinedInt)
