//
//  CoinView.swift
//  RefreshableCrypto
//
//  Created by 김종혁 on 11/24/23.
//

import Foundation
import SwiftUI

struct CoinView: View {
    let coin: Coin
    
    var body: some View {
        HStack {
            Text("\(coin.acronym): \(coin.coinName)")
            Spacer()
            LogoView(coin: coin)
        }
    }
}
