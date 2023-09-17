//
//  ContentView.swift
//  Location
//
//  Created by 김종혁 on 2023/09/17.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject
    private var locationManager = LocationManager()
    var body: some View {
        VStack {
            Text("Status: \(locationManager.status.description)")
            HStack {
                Text("Latitude: \(locationManager.current.latitudeDescription)")
                Text("Longitude: \(locationManager.current.longitudeDescription)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
