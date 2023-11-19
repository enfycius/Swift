//
//  ContentView.swift
//  CombineCoreLocationManager
//
//  Created by 김종혁 on 2023/09/17.
//

import SwiftUI

struct ContentView: View {
    @StateObject
    var locationViewModel = LocationViewModel()
    
    var body: some View {
        Group {
            if locationViewModel.thereIsAnError {
                Text("Location Service terminated with error: \(locationViewModel.errorMessage)")
            } else {
                Text("Status: \(locationViewModel.statusDescription)")
                HStack {
                    Text("Latitude: \(locationViewModel.latitude)")
                    Text("Longitude: \(locationViewModel.longitude)")
                }
            }
            
        }.padding(.horizontal, 24)
            .task {
                locationViewModel.startUpdating()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
