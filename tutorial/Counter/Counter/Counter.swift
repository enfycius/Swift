//
//  CounterView.swift
//  Counter
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation

class Counter: ObservableObject {
    @Published var value: Int = 0
    
    func inc() {
        value += 1
    }
    
    func dec() {
        value -= 1
    }
}
