//
//  ContentView.swift
//  TheStacks
//
//  Created by 김종혁 on 2023/08/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("VStack Item 1")
            Text("VStack Item 2")
            Spacer()
            Divider()
            Text("VStack Item 3")
            HStack {
                Text("Item 1")
                Divider().background(Color.black)
                Text("HStack Item 2")
                    .frame(
                        maxWidth: .infinity,
                           maxHeight: .infinity,
                           alignment: .topLeading)
                Text("HStack Item 3")
            }
            .background(Color.red)
            ZStack {
                Text("ZStack Item 1")
                    .padding()
                    .background(Color.green)
                    .opacity(0.8)
                Text("ZStack Item 2")
                    .padding()
                    .background(Color.green)
                    .offset(x: 80, y: -400)
            }
        }.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
