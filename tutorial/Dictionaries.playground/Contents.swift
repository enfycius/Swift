struct PersonName {
    let givenName: String
    let familyName: String
}

enum CommunicationMethod {
    case phone
    case email
    case textMessage
    case fax
    case telepathy
    case subSpaceRelay
    case tachyons
}

class Person {
    let name: PersonName
    let preferredCommunicationMethod: CommunicationMethod
    
    convenience init(givenName: String, familyName: String, commsMethod: CommunicationMethod) {
        let name = PersonName(givenName: givenName, familyName: familyName)
        
        self.init(name: name, commsMethod: commsMethod)
    }
    
    init(name: PersonName, commsMethod: CommunicationMethod) {
        self.name = name
        
        preferredCommunicationMethod = commsMethod
    }
    
    var displayName: String {
        return "\(name.givenName) \(name.familyName)"
    }
    
}

var crew = Dictionary<String, Person>()

crew["Captain"] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)
crew["First Officer"] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)
crew["Chief Engineer"] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)
crew["Second Officer"] = Person(givenName: "Data", familyName: "Soong", commsMethod: .fax)
crew["Councillor"] = Person(givenName: "Deanna", familyName: "Troi", commsMethod: .telepathy)
crew["Security Officer"] = Person(givenName: "Tasha", familyName: "Yar", commsMethod: .subSpaceRelay)
crew["Chief Medical Officer"] = Person(givenName: "Beverly", familyName: "Crusher", commsMethod: .tachyons)

let roles = Array(crew.keys)

print(roles)

let firstRole = roles.first!
let cmo = crew[firstRole]!

print("\(firstRole): \(cmo.displayName)")

print(crew["Security Officer"]!.name.givenName)

crew["Security Officer"] = Person(givenName: "Worf", familyName: "Son of Mogh", commsMethod: .subSpaceRelay)

print(crew["Security Officer"]!.name.givenName)

let intByName: [String: Int] = ["one": 1, "two": 2, "three": 3]

//var crew: [String: Person] = [:]

crew["Captain"] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)

enum Role: String {
    case captain = "Captain"
    case firstOfficer = "First Officer"
    case secondOfficer = "Second Officer"
    case cheifEngineer = "Chief Engineer"
    case councillor = "Councillor"
    case securityOfficer = "Security Officer"
    case chiefMedicalOfficer = "Chief Medical Officer"
}

var crew1 = Dictionary<Role, Person>()

crew1[.captain] = Person(givenName: "Jean-Luc", familyName: "Picard", commsMethod: .phone)
crew1[.firstOfficer] = Person(givenName: "William", familyName: "Riker", commsMethod: .email)
crew1[.cheifEngineer] = Person(givenName: "Geordi", familyName: "LaForge", commsMethod: .textMessage)
crew1[.secondOfficer] = Person(givenName: "Data", familyName: "Soong", commsMethod: .fax)
crew1[.councillor] = Person(givenName: "Deanna", familyName: "Troi", commsMethod: .telepathy)
crew1[.securityOfficer] = Person(givenName: "Tasha", familyName: "Yar", commsMethod: .subSpaceRelay)
crew1[.chiefMedicalOfficer] = Person(givenName: "Beverly", familyName: "Crusher", commsMethod: .tachyons)
