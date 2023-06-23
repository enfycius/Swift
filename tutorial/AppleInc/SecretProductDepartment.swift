//
//  SecretProductDepartment.swift
//  AppleInc
//
//  Created by 김종혁 on 2023/06/22.
//

class SecretProductDepartment {
    private var secretCodeWord = "Titan"
    private var secretProducts = ["Apple Glasses", "Apple Car", "Apple Brain Implant"]
    
    func nextProduct(codeWord: String) -> String? {
        let codeCorrect = codeWord == secretCodeWord
        
        return codeCorrect ? secretProducts.first : nil
    }
}

// let insecureCodeWord = SecretProductDepartment().secretCodeWord // Compilation Error

