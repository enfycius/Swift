//
//  Service.swift
//  CoolGifList
//
//  Created by 김종혁 on 11/25/23.
//

import Foundation

struct Service {
    private let apiKey = "SnEyxc3vOOJuR1JAbhUW0GoW5DpPkwHR"
    private let pageSize = 10
    private let query = "cat"
    
    
    private let decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }()
    
    func fetchGifs(page: Int) async -> [Gif] {
        let offset = page * pageSize
        
        guard let url = URL(string: "https://api.giphy.com/v1/gifs/search?api_key=\(apiKey)&q=\(query)&limit=\(pageSize)&offset=\(offset)")
        else {
            return []
        }
        do {
            let (data, _) = try await URLSession
                .shared
                .data(from: url)
            
            let response = try
            decoder.decode(Response.self, from: data)
            
            return response.data
        } catch {
            print(error)
            
            return []
        }
    }
}
