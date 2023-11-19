//
//  LocationManager.swift
//  CombineCoreLocationManager
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import CoreLocation
import Combine

class LocationManager: NSObject {
    let statusPublisher = PassthroughSubject<CLAuthorizationStatus, LocationError>()
    let locationPublisher = PassthroughSubject<CLLocation?, Never>()
    
    enum LocationError: String, Error {
        case restricted
        case denied
        case unknown
    }
    
    private let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        self.locationManager.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestWhenInUseAuthorization()
    }
    
    func start() {
        locationManager.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
        case .restricted:
            statusPublisher
                .send(completion: .failure(.restricted))
        case .denied:
            statusPublisher
                .send(completion: .failure(.denied))
        case .notDetermined, .authorizedAlways, .authorizedWhenInUse:
            statusPublisher.send(manager.authorizationStatus)
        @unknown default:
            statusPublisher
                .send(completion: .failure(.unknown))
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        
        locationPublisher.send(location)
    }
}
