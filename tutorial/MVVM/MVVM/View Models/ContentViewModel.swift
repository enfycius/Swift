//
//  ContentViewModel.swift
//  MVVM
//
//  Created by 김종혁 on 11/26/23.
//

import Foundation


class ContentViewModel: ObservableObject {
    @Published var jong = Person(name: "종혁", birthday: Date())
    
    var name: String {
        jong.name
    }
    
    var age: String {
        return "27"
    }
    
    func changeName(_ name: String) {
        jong.name = name
    }
}
