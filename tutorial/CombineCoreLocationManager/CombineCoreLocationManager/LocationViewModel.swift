//
//  LocationViewModel.swift
//  CombineCoreLocationManager
//
//  Created by 김종혁 on 2023/09/17.
//

import Foundation
import CoreLocation
import Combine


class LocationViewModel: ObservableObject {
    @Published
    private var status: CLAuthorizationStatus = .notDetermined
    
    @Published
    private var currentLocation: CLLocation?
    
    private var cancellableSet: Set<AnyCancellable> = []
    
    @Published
    var errorMessage = ""
    
    private let locationManager = LocationManager()
    
    var thereIsAnError: Bool {
        !errorMessage.isEmpty
    }
    
    var latitude: String {
        currentLocation.latitudeDescription
    }
    
    var longitude: String {
        currentLocation.longitudeDescription
    }
    
    var statusDescription: String {
        switch status {
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
    
    init() {
        locationManager
            .statusPublisher
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .removeDuplicates()
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    self.errorMessage = error.rawValue
                }
            } receiveValue: { self.status = $0 }
            .store(in: &cancellableSet)
        
        locationManager.locationPublisher
            .debounce(for: 0.5, scheduler: RunLoop.main)
            .removeDuplicates(by: lessThanOneMeter)
            .assign(to: \.currentLocation, on: self)
            .store(in: &cancellableSet)
    }
    
    func startUpdating() {
        locationManager.start()
    }
    
    private func lessThanOneMeter(_ lhs: CLLocation?, _ rhs: CLLocation?) -> Bool {
        if lhs == nil && rhs == nil {
            return true
        }
        
        guard let lhr = lhs, let rhr = rhs else {
            return false
        }
        
        return lhr.distance(from: rhr) < 1
    }
}

extension Optional where Wrapped == CLLocation {
    var latitudeDescription: String {
        guard let self = self else {
            return "-"
        }
        
        return String(format: "%0.4f", self.coordinate.latitude)
    }
    
    var longitudeDescription: String {
        guard let self = self else {
            return "-"
        }
        
        return String(format: "%0.4f", self.coordinate.longitude)
    }
}
