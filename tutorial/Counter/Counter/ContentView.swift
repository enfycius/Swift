//
//  ContentView.swift
//  Counter
//
//  Created by 김종혁 on 2023/09/17.
//

import SwiftUI

struct ContentView: View {
    @State var refreshedAt: Date = Date()
    var body: some View {
        VStack(spacing: 12) {
            Text("Refresh at ") + Text(refreshedAt.formatted(date: .omitted, time: .standard))
            CounterView()
            Button {
                refreshedAt = Date()
            } label: {
                Text("Refresh")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
