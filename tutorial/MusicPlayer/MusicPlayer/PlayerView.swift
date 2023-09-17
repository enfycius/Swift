//
//  PlayerView.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import SwiftUI

struct PlayerView: View {
    @EnvironmentObject
    private var musicPlayer: MusicPlayer
    let song: Song
    
    var body: some View {
        VStack {
            Image(song.cover)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
            
            HStack {
                Text(song.name)
                Text(song.artist).italic()
            }
            
            PlayButton(song: song)
        }
    }
}
