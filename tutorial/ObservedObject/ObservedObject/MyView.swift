//
//  MyView.swift
//  ObservedObject
//
//  Created by 김종혁 on 11/25/23.
//

import SwiftUI

struct MyView: View {
    @ObservedObject var viewModel = MyViewModel()
    
    var body: some View {
        Button(viewModel.isOn ? "on" : "off") {
            viewModel.toggle()
        }
        .foregroundColor(Color.black)
    }
}

#Preview {
    MyView()
}
