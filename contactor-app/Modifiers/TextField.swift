//
//  TextField.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    @State var iconName: String
    
    func body(content: Content) -> some View {
        return HStack {
            Image(systemName: iconName).foregroundColor(.purple)
            content.font(Font.custom("SpoqaHanSansNeo-Regular", size: 14.0))
        }
        .padding()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.purple, lineWidth: 1.5)
        )
    }
}
