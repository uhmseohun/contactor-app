//
//  User.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/17.
//

import Foundation

struct Address: Codable {
    var street: String;
    var detail: String;
};

struct UserIdentity: Codable {
    var _id: String;
    var username: String;
    var name: String;
    var phone: String;
    var birthdate: String;
    var address: Address;
    var createdAt: String;
    var updatedAt: String;
    var isPositive: Bool;
};
