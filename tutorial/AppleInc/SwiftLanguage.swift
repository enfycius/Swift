//
//  SwiftLanguage.swift
//  AppleInc
//
//  Created by 김종혁 on 2023/06/22.
//

open class SwiftLanguage {
    open func versionNumber() -> Float {
        return 5.1
    }
    
    open func supportedPlatform() -> [String] {
        return ["iOS", "macOS", "tvOS", "watchOS", "Linux"]
    }
}
