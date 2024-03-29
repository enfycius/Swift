//
//  ResultsView.swift
//  Tax Calculator
//
//  Created by 김종혁 on 11/19/23.
//

import SwiftUI
import SwiftUICharts

struct ResultsView: View {
    @Binding var salary: String
    var taxBreakdown: [Double] = [5, 10, 15]
    var body: some View {
        let salaryNum = Double(salary)!
        var incomeTax: Double = 0
        var nationalInsuranceTax: Double = 0
        
        if(salaryNum > 12570) {
            if(salaryNum > 37700) {
                if(salaryNum > 150000) {
                    incomeTax += (37700 - 12571) * 0.2
                    incomeTax += (150000 - 37701) * 0.4
                    incomeTax += (salaryNum - 150000) * 0.45
                } else {
                    incomeTax += (37700 - 12571) * 0.2
                    incomeTax += (salaryNum - 37700) * 0.4
                }
            } else {
                incomeTax += (salaryNum - 12570) * 0.2
            }
        }
        
        nationalInsuranceTax = salaryNum * 0.13
        
        let postTaxSalary = salaryNum - incomeTax - nationalInsuranceTax
        let salaryString = String(format: "£%.2F", salaryNum)
        let postTaxSalaryString = String(format: "£%.2F", postTaxSalary)
        let incomeTaxString = String(format: "£%.2F", incomeTax)
        let nationalInsuranceTaxString = String(format: "£%.2F", nationalInsuranceTax)
        let taxBreakdown: [Double] = [postTaxSalary, incomeTax, nationalInsuranceTax]
        
        return VStack {
            PieChart()
                .data(taxBreakdown)
                .chartStyle(ChartStyle(backgroundColor: .white,
                                       foregroundColor: ColorGradient(.blue, .purple)))
            Text("Before Tax")
                .font(.system(size: 32))
                .padding(.vertical)
            Text(salaryString)
                .font(.system(size: 32))
                .padding(.vertical)
            Text("After Tax")
                .font(.system(size: 32))
                .padding(.vertical)
            Text(postTaxSalaryString)
                .font(.system(size: 32))
                .padding(.vertical)
            
            Group {
                Text("Post Tax Salary")
                ProgressView(postTaxSalaryString, value: postTaxSalary / salaryNum * 100, total: 100)
                Text("Tax")
                ProgressView(incomeTaxString, value: incomeTax / salaryNum * 100, total: 100)
                Text("National Insurance")
                ProgressView(nationalInsuranceTaxString, value: 13, total: 100)
            }
            
            
        }.padding()
            .navigationBarTitle("Summary")
        
    }
}

#Preview {
    ResultsView(salary: .constant("52"))
}
