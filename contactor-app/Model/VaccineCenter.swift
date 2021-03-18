//
//  VaccineCenter.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/17.
//

import Foundation

struct NearbyVaccineCenterResponse: Codable {
    var vaccineCenters: [VaccineCenter];
};

struct VaccineCenter: Codable {
    var address: String;
    var centerName: String;
    var centerType: String;
    var facilityName: String;
    var id: Int;
    var lat: Double;
    var lng: Double;
    var org: String;
    var sido: String;
    var sigungu: String;
    var zipCode: String;
};
