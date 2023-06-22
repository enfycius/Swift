struct Pug {
    let name: String
}

let pugs = [Pug]()

typealias Grumble = [Pug]

var grumble = Grumble()

let marty = Pug(name: "Marty McPug")
let wolfie = Pug(name: "Wolfgang Pug")
let buddy = Pug(name: "Buddy")

grumble.append(marty)
grumble.append(wolfie)
grumble.append(buddy)

print(grumble[0])

enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFetcher {
    typealias FetchResultHandler = (String?, Error?) -> Void
    
//    func fetchCurrentProgrammeName(forChannel channel: Channel, resultHandler: (String?, Error?) -> Void) {
//        let exampleProgramName = "Sherlock"
//
//        resultHandler(exampleProgramName, nil)
//    }
//
//    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: (String?, Error?) -> Void) {
//        let exampleProgrammeName = "Luther"
//
//        resultHandler(exampleProgrammeName, nil)
//    }
    
    func fetchCurrentProgrammeName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Sherlock"
        
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgrammeName = "Luther"
        
        resultHandler(exampleProgrammeName, nil)
    }
}


let fetcher = ProgrammeFetcher()

fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { programmeName, error in
    print(programmeName as Any)
})
