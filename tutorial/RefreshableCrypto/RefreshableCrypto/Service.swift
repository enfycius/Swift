//
//  Service.swift
//  RefreshableCrypto
//
//  Created by 김종혁 on 11/24/23.
//

import Foundation

struct Service {
    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }()
    
    func fetchCoins() async -> [Coin] {
        guard let url = URL(string: "https://random-data-api.com/api/crypto_coin/random_crypto_coin?size=10")
                
        else {
            return []
        }
        
        do {
            let (data, _) = try await URLSession
                .shared
                .data(from: url)
            
            let list = try decoder.decode([Coin].self, from: data)
            
            return list.sorted {
                $0.acronym < $1.acronym
            }
        } catch {
            return []
        }
    }
}
