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

class GlobalState: ObservableObject {
    @Published var isAuthenticated: Bool
    @Published var userIdentity: UserIdentity? = nil
    
    init() {
        self.isAuthenticated = UserDefaults.standard.bool(forKey: UserDefaultsKeys.isAuthenticated.rawValue)
        self.userIdentity = nil
        if let savedIdentity = UserDefaults.standard.object(forKey: UserDefaultsKeys.userIdentity.rawValue) as? Data {
            let decoder = JSONDecoder()
            if let loadedIdentity = try? decoder.decode(UserIdentity.self, from: savedIdentity) {
                self.userIdentity = loadedIdentity
            }
        }
    }
}

struct ContentView: View {
    @StateObject var globalState = GlobalState()
    var locationFetcher = LocationFetcher()
    
    init() {
        self.locationFetcher.start()
    }
    
    var body: some View {
        if globalState.isAuthenticated {
            MainView().environmentObject(globalState)
        } else {
            LoginView().environmentObject(globalState)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
