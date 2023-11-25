//
//  ContentView.swift
//  ObservedObject
//
//  Created by 김종혁 on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            Button(isOn ? "on" : "off") {
                isOn.toggle()
            }
            .foregroundColor(Color.black)
        }
        Divider()
        MyView()
    }
}

#Preview {
    ContentView()
}
