//
//  Todo.swift
//  To-do
//
//  Created by 김종혁 on 2023/09/16.
//

import Foundation

struct Todo: Identifiable {
    let id = UUID()
    let description: String
    var done: Bool
}
