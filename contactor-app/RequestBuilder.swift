//
//  RequestBuilder.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/17.
//

import Foundation

let baseUrl = "https://fed8ca0e0f0a.ngrok.io"

func RequestBuilder(path: String, method: String, bodyData: [String: Any]?) -> URLRequest {
    let url = URL(string: baseUrl + path)!
    var request = URLRequest(url: url)
    request.httpMethod = method
    if (bodyData != nil && method != "GET") {
        request.httpBody = try? JSONSerialization.data(withJSONObject: bodyData)
    }
    request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
    
    if (UserDefaults.standard.bool(forKey: UserDefaultsKeys.isAuthenticated.rawValue)) {
        let accessToken = UserDefaults.standard.string(forKey: UserDefaultsKeys.accessToken.rawValue)
        request.setValue("Bearer \(accessToken!)", forHTTPHeaderField: "Authorization")
    }
    
    return request
}
