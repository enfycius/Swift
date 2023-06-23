//
//  main.swift
//  Test
//
//  Created by 김종혁 on 2023/06/23.
//

import Foundation
import AppleInc

class WinSwift: SwiftLanguage {
    override func versionNumber() -> Float {
        return 5.3
    }
    
    override func supportedPlatform() -> [String] {
        var supported = super.supportedPlatform()
        supported.append("Windows")
        
        return supported
    }
}

    
let apple = Apple()
let keith = Person(name: "Keith Moon")

apple.newEmployee(person: keith)

print("Current CEO: \(apple.ceo.name)")

let craig = Person(name: "Craig Federighi")

// apple.ceo = craig   // Doesn't compile

let boughtiPhone = apple.store.selliPhone(ofModel: .iPhone12Pro)

let buildAniPhone = AppleiPhone(model: .iPhone12Pro)    // Doesn't compile
