//
//  VaccineCenter.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import Foundation

struct VaccineCenter: Identifiable {
    var id = UUID()
    var name: String
    var address: String
}

var DummyVaccineCenters = [
    VaccineCenter(name: "꾸러기소아청소년과의원", address: "안산시 단원구 선부광장1로 82 서림프라자 3층"),
    VaccineCenter(name: "365드림의원", address: "안산시 단원구 선부광장1로 56 3층"),
    VaccineCenter(name: "동안구보건소", address: "안양시 동안구 평촌대로253번길 41"),
]
