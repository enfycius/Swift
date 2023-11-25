//
//  MyViewModel.swift
//  ObservedObject
//
//  Created by 김종혁 on 11/25/23.
//

import Foundation

final class MyViewModel: ObservableObject {
    @Published var isOn = false
    
    func toggle() {
        isOn.toggle()
    }
}
