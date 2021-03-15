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
    
    func sendToServer(lat: CLLocationDegrees, lon: CLLocationDegrees) {
        let url = URL(string: "https://hookb.in/jek8mOp3xWseBB23Ojxr?lat=\(lat)&lon=\(lon)")
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!)
        task.resume()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let lastLocation = locations.last else {
            return
        }
        
        let lat = lastLocation.coordinate.latitude
        let lon = lastLocation.coordinate.longitude
        sendToServer(lat: lat, lon: lon)
    }
}
