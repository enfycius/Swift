//
//  InputTodoView.swift
//  To-do
//
//  Created by 김종혁 on 2023/09/16.
//

import Foundation
import SwiftUI

struct InputTodoView: View {
    
    @State
    private var newTodoDescription: String = ""
    
    @Binding
    var todos: [Todo]
    
    var body: some View {
        HStack {
            TextField("Todo", text: $newTodoDescription)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Button {
                guard !newTodoDescription.isEmpty else {
                    return
                }
                
                todos.append(Todo(description: newTodoDescription, done: false))
                
            } label: {
                Text("Add")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .foregroundColor(.white)
                    .background(.green)
                    .cornerRadius(5)
            }
                                
        }
        
        .frame(height: 60)
        .padding(.horizontal, 24)
        .padding(.bottom, 30)
        .background(Color.gray)
    }
    
}
