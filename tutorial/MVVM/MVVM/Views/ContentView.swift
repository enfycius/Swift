//
//  ContentView.swift
//  MVVM
//
//  Created by 김종혁 on 11/26/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.name)
                .padding()
            Text(viewModel.age)
                .padding()
            Button("이름변경") {
                viewModel.changeName("포뇨")
            }
        }
    }
}

#Preview {
    ContentView()
}
