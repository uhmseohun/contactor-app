//
//  ContentView.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

import SwiftUI
import CoreLocation
import CoreBluetooth

struct ContentView: View {
    var locationFetcher = LocationFetcher()
    var localBeacon: CLBeaconRegion!
    var beaconPeripheralData: NSDictionary!
    var peripheralManager: CBPeripheralManager!
    
    init() {
        self.locationFetcher.start()
    }
    
    var body: some View {
        if true {
            MainView()
        } else {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
