//
//  MiniPlayerView.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import SwiftUI

struct MiniPlayerView: View {
    @EnvironmentObject
    private var musicPlayer: MusicPlayer
    
    var body: some View {
        if let currentSong = musicPlayer.currentSong {
            SongView(song: currentSong)
                .padding(.all, 24)
        } else {
            EmptyView()
        }
    }
}
