//
//  MusicPlayer.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation

class MusicPlayer: ObservableObject {
    @Published
    var currentSong: Song?
    
    func pressButton(song: Song) {
        if currentSong == song {
            currentSong = nil
        } else {
            currentSong = song
        }
    }
}
