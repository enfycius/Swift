//
//  MusicPlayerApp.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import SwiftUI

@main
struct MusicPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(MusicPlayer())
        }
    }
}
