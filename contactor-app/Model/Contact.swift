//
//  Contact.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/24.
//

import Foundation

struct Location: Codable {
    var lat: Double;
    var lng: Double;
}

struct ContactLog: Codable {
    var _id: String;
    var location: Location;
    var user: UserIdentity;
    var contactor: UserIdentity;
    var createdAt: String;
    var updatedAt: String;
}

struct WeeklyContactWithPositiverLogResponse: Codable {
    var contactLogs: [ContactLog];
}
