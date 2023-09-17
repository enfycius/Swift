//
//  ContentView.swift
//  StopWatch
//
//  Created by 김종혁 on 2023/09/17.
//

import SwiftUI

struct ContentView: View {
    @StateObject
    private var timer = StopWatchTimer()
    
    var body: some View {
        VStack(spacing: 12) {
            HStack(spacing: 0) {
                Text("\(timer.minutes.formatted)")
                    .font(.system(size: 80))
                    .frame(width: 100)
                Text(":")
                    .font(.system(size: 80))
                Text("\(timer.seconds.formatted)")
                    .font(.system(size: 80))
                    .frame(width: 100)
                Text(":")
                    .font(.system(size: 80))
                Text("\(timer.deciseconds.formatted)")
                    .font(.system(size: 80))
                    .frame(width: 100)
            }
            
            Button {
                if timer.started {
                    timer.stop()
                } else {
                    timer.start()
                }
            } label: {
                Text(timer.started ? "Stop" : "Start")
                    .foregroundColor(.white)
                    .padding(.horizontal, 24)
                    .padding(.vertical, 16)
                    .frame(width: 100)
                    .background(timer.started ? Color.red : Color.green)
                    .cornerRadius(5)
            }
        }
    }
}

extension Int {
    var formatted: String {
        String(format: "%02d", self)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
