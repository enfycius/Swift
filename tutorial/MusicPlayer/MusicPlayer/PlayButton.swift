//
//  PlayButton.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import SwiftUI

struct PlayButton: View {
    @EnvironmentObject
    private var musicPlayer: MusicPlayer
    let song: Song
    
    private var buttonText: String {
        if song == musicPlayer.currentSong {
            return "stop"
        } else {
            return "play"
        }
    }
    
    var body: some View {
        Button {
            musicPlayer.pressButton(song: song)
        } label: {
            Image(systemName: buttonText)
                .font(.system(.largeTitle))
                .foregroundColor(.black)
        }
    }
}
