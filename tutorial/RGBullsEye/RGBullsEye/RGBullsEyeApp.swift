//
//  RGBullsEyeApp.swift
//  RGBullsEye
//
//  Created by 김종혁 on 2021/08/02.
//

import SwiftUI

@main
struct RGBullsEyeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        }
    }
}
