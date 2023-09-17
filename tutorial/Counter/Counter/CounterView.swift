//
//  CounterView.swift
//  Counter
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import SwiftUI

struct CounterView: View {
//    @ObservedObject var counter = Counter()
    @StateObject var counter = Counter()
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(counter.value)")
            HStack(spacing: 12) {
                Button {
                    counter.dec()
                } label: {
                    Text("-")
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                }
                Button {
                    counter.inc()
                } label: {
                    Text("+")
                        .padding()
                        .foregroundColor(.white)
                        .background(.green)
                }
            }
        }
    }
}
