//
//  FontStyles.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

enum FontWeight: String {
    case regular = "Regular"
    case thin = "Thin"
    case light = "Light"
    case medium = "Medium"
    case bold = "Bold"
}

extension Text {
    func spoqa(_ weight: FontWeight = .regular, size: CGFloat = 11.0) -> Text {
        self.font(Font.custom("SpoqaHanSansNeo-\(weight.rawValue)", size: size))
    }
}

extension TextField {
    func spoqa(_ weight: FontWeight = .regular, size: CGFloat = 11.0) -> TextField {
        self.font(Font.custom("SpoqaHanSansNeo-\(weight.rawValue)", size: size)) as! TextField<Label>
    }
}
