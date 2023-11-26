//
//  DownloadWithCombineViewModel.swift
//  DownloadWithCombine
//
//  Created by 김종혁 on 11/26/23.
//

import Foundation
import Combine

class DownloadWithCombineViewModel: ObservableObject {
    @Published var posts: [PostModel] = []
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .receive(on: DispatchQueue.main)
            .tryMap { data, response -> Data in
                
                guard
                    let response = response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
                    throw URLError(.badServerResponse)
                }
                
                return data
            }
            .decode(type: [PostModel].self, decoder: JSONDecoder())
            .sink { completion in
                    print("Completion: \(completion)")
            } receiveValue: { [weak self] returnedPost in
                self?.posts = returnedPost
            }
            .store(in: &cancellables)
        
    }
}
