//
//  ContentView.swift
//  DownloadWithCombine
//
//  Created by 김종혁 on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = DownloadWithCombineViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.posts) { post in
                    VStack(alignment: .leading, spacing: 10) {
                        Text(post.title)
                            .font(Font.title.bold())
                        Text(post.body)
                            .foregroundColor(Color(UIColor.systemGray2))
                    }
                    
                }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
            }
        }
            .navigationBarTitle("Fake JSON Data")
            .listStyle(PlainListStyle())
    }
}

#Preview {
    ContentView()
}
