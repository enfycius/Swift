//
//  ContentView.swift
//  CoolGifList
//
//  Created by 김종혁 on 11/25/23.
//

import SwiftUI
import NukeUI

struct ContentView: View {
    let service = Service()
    
    @State var gifs: [Gif] = []
    @State var page = 1 
    
    var body: some View {
        List(gifs) { gif in
            VStack {
                LazyImage(source: gif.url)
                    .aspectRatio(contentMode: .fit)
                Text(gif.title)
            }
            .task {
                if gif == gifs.last {
                    page += 1
                    gifs += await service
                        .fetchGifs(page: page)
                }
            }
        }.listStyle(.plain)
            .task {
                gifs = await service.fetchGifs(page: page)
            }
        
    }
}

#Preview {
    ContentView()
}
