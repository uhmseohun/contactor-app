//
//  LocationFetcher.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import CoreLocation

class LocationFetcher: NSObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    func start() {
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = 50
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        if #available(iOS 9, *) {
            manager.allowsBackgroundLocationUpdates = true
        }
        manager.startUpdatingLocation()
    }
    
    func sendToServer(lat: CLLocationDegrees, lng: CLLocationDegrees) {
        let request = RequestBuilder(
            path: "/location",
            method: "POST",
            bodyData: [
                "lat": lat,
                "lng": lng
            ]
        )
        
        URLSession.shared.dataTask(with: request).resume()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastLocation = locations.last else {
            return
        }
        
        let lat = lastLocation.coordinate.latitude
        let lng = lastLocation.coordinate.longitude
        sendToServer(lat: lat, lng: lng)
    }
}
