//
//  ContentView.swift
//  Tax Calculator
//
//  Created by 김종혁 on 11/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var salary: String = ""
    @State private var isSalaryValid: Bool = false
    
    var body: some View {
        NavigationView {
            
        VStack
        {
            Text("Annual Salary")
                .padding(.bottom, 75.0)
            TextField("Salary", text: $salary)
                .border(Color.black, width: 1)
                .frame(width: 200.0)
                .padding(.bottom, 75.0)
                .keyboardType(.decimalPad)
            
            NavigationLink(destination: ResultsView(salary: $salary), isActive: $isSalaryValid, label: {
                Text("Calculate Tax")
                    .bold()
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .onTapGesture {
                        GoToResultsView()
                    }
            })
            
            
        }
        .padding()
        .navigationTitle("Main Page")
    }
        
    }
    
    func GoToResultsView() {
        if(Float(salary) != nil) {
            if(Float(salary)! > 0) {
                isSalaryValid = true
            }
                
        }
    }
}

#Preview {
    ContentView()
}
