//
//  Coin.swift
//  RefreshableCrypto
//
//  Created by 김종혁 on 11/24/23.
//

import Foundation

struct Coin: Decodable, Identifiable {
    let id: Int
    let coinName: String
    let acronym: String
    let logo: String
}
