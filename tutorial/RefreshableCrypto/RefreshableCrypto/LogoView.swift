//
//  LogoView.swift
//  RefreshableCrypto
//
//  Created by 김종혁 on 11/24/23.
//

import Foundation
import SwiftUI

struct LogoView: View {
    let coin: Coin
    
    var body: some View {
        AsyncImage(url: URL(string: coin.logo),
                   content: { image in
            image.resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 40, maxHeight: 40)
        },
                   placeholder: {
            ProgressView()
        }
        
        )
    }
}
