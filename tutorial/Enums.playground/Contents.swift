//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Mister"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "Prof"
//    case other
//}
//
//let title1 = Title.mr
//
//let title2: Title
//
//title2 = .mr
//
//
//print(title1)
//print(title2)
//
//print(title1.rawValue)
//

//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Mister"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "Prof"
//    case other      // Inferred as "other"
//
//    func isProfessional() -> Bool {
//        return self == Title.dr || self == Title.prof
//    }
//}

//enum Title: String {
//    case mr = "Mr"
//    case mrs = "Mrs"
//    case mister = "Mister"
//    case miss = "Miss"
//    case dr = "Dr"
//    case prof = "Prof"
//    case other
//
//    var isProfessional: Bool {
//        return self == Title.dr || self == Title.prof
//    }
//}
//
//let loganTitle = Title.mr
//let xavierTitle = Title.prof
//
//print(loganTitle.isProfessional)
//print(xavierTitle.isProfessional)

enum Title {
    case mr
    case mrs
    case mister
    case miss
    case dr
    case prof
    case other(String)
}

let mister: Title = .mr
let dame: Title = .other("Dame")
