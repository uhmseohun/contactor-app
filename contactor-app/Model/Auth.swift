//
//  Auth.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/17.
//

import Foundation

struct AuthenticationResponse: Codable {
    var accessToken: String;
    var identity: UserIdentity;
};
