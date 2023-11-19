//
//  Setting.swift
//  ResultBuilder
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation

struct Setting {
    var name: String
    var value: Value
}

extension Setting {
    enum Value {
        case bool(Bool)
        case int(Int)
        case string(String)
        case group([Setting])
    }
}
