//
//  Song.swift
//  MusicPlayer
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation

struct Song: Identifiable, Equatable {
    var id = UUID()
    let artist: String
    let name: String
    let cover: String
}
