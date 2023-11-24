//
//  ContentView.swift
//  RefreshableCrypto
//
//  Created by 김종혁 on 11/24/23.
//

import SwiftUI

struct ContentView: View {
    let service = Service()
    
    @State var coins: [Coin] = []
    
    var body: some View {
        List(coins) {
            CoinView(coin: $0)
        }
        .listStyle(.plain)
        .refreshable {
            coins = await service.fetchCoins()
        }
        .task {
            coins = await service.fetchCoins()
        }
    }
}

#Preview {
    ContentView()
}
