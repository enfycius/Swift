//class UserManager {
//    var currentUserName: String = "Emmanuel Goldstein" {
//        willSet (newUserName) {
//            print("Goodbye to \(currentUserName)")
//            print("I hear \(newUserName) is on their way!")
//        }
//
//        didSet (oldUserName) {
//            print("Welcome to \(currentUserName)")
//            print("I miss \(oldUserName) already!")
//        }
//    }
//}

class UserManager {
    var currentUserName: String = "Emmanuel Goldstein" {
        willSet {
            print("Goodbye to \(currentUserName)")
            print("I hear \(newValue) is on their way!")
        }
        
        didSet {
            print("Welcome to \(currentUserName)")
            print("I miss \(oldValue) already!")
        }
    }
}

let manager = UserManager()

manager.currentUserName = "Dade Murphy"
manager.currentUserName = "Kate Libby"


