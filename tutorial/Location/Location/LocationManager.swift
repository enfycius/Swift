//
//  LocationManager.swift
//  Location
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject {
    private let locationManager = CLLocationManager()
    @Published
    var status: CLAuthorizationStatus?
    @Published
    var current: CLLocation?
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.distanceFilter = 10
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        status = manager.authorizationStatus
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        
        self.current = location
    }
}

extension Optional where Wrapped == CLAuthorizationStatus {
    var description: String {
        guard let self = self else {
            return "unknown"
        }
        
        switch self {
        case .notDetermined:
            return "notDetermined"
        case .authorizedWhenInUse:
            return "authorizedWhenInUse"
        case .authorizedAlways:
            return "authorizedAlways"
        case .restricted:
            return "restricted"
        case .denied:
            return "denied"
        @unknown default:
            return "unknown"
        }
    }
}

extension Optional where Wrapped == CLLocation {
    var latitudeDescription: String {
        guard let self = self else {
            return "-"
        }
        
        return "\(self.coordinate.latitude)"
    }
    
    var longitudeDescription: String {
        guard let self = self else {
            return "-"
        }
        
        return "\(self.coordinate.longitude)"
    }
}
