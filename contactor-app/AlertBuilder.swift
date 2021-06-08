//
//  AlertBuilder.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/04/01.
//

import Foundation
import UIKit

func AlertBuilder (title: String, message: String) -> UIAlertController {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
    alert.addAction(action)
    return alert
}
