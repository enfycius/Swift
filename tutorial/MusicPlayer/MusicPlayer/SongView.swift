//
//  SongView.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import SwiftUI

struct SongView: View {
    @EnvironmentObject
    private var musicPlayer: MusicPlayer
    let song: Song
    
    var body: some View {
        HStack {
            NavigationLink(destination: PlayerView(song: song)) {
                Image(song.cover)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                VStack(alignment: .leading) {
                    Text(song.name)
                    Text(song.artist).italic()
                }
            }
            
            Spacer()
            PlayButton(song: song)
            
        }.buttonStyle(PlainButtonStyle())
        
        
    }
}
