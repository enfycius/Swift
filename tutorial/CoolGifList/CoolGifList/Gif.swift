//
//  Gif.swift
//  CoolGifList
//
//  Created by 김종혁 on 11/25/23.
//

import Foundation

struct Gif: Identifiable, Codable, Equatable {
    let id: String
    let title: String
    var url: String {
        images.downsized.url
    }
    let images: Images
    
    static func == (lhs: Gif, rhs: Gif) -> Bool {
        lhs.id == rhs.id
    }
}
