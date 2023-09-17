//
//  StopWatchTimer.swift
//  StopWatch
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import Combine

class StopWatchTimer: ObservableObject {
    @Published
    var deciseconds: Int = 0
    @Published
    var seconds: Int = 0
    @Published
    var minutes: Int = 0
    @Published
    var started = false
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    func start() {
        deciseconds = 0
        seconds = 0
        minutes = 0
        
        cancellableSet.store {
            Timer.publish(every: 0.1, on: RunLoop.main, in: .default)
                .autoconnect()
                .sink { _ in
                    self.deciseconds = (self.deciseconds + 1) % 10
                }
            
            Timer.publish(every: 1.0, on: RunLoop.main, in: .default)
                .autoconnect()
                .sink { _ in
                    self.seconds = (self.seconds + 1) % 60
                }
            
            Timer.publish(every: 60.0, on: RunLoop.main, in: .default)
                .autoconnect()
                .sink { _ in
                    self.minutes = (self.minutes + 1) % 60
                }
        }
        
        started = true
    }
    
    func stop() {
        cancellableSet = []
        started = false
    }
}

typealias CancellableSet = Set<AnyCancellable>

extension CancellableSet {
    mutating func store(@CancellableBuilder _ cancellables: () -> [AnyCancellable]) {
        formUnion(cancellables())
    }
    
    @resultBuilder
    struct CancellableBuilder {
        static func buildBlock(_ cancellables: AnyCancellable...) -> [AnyCancellable] {
            return cancellables
        }
    }
}
