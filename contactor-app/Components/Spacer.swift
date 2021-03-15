//
//  Spacer.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

func HSpacer(_ amount: CGFloat) -> some View {
    return Spacer().frame(width: amount)
}

func VSpacer(_ amount: CGFloat) -> some View {
    return Spacer().frame(height: amount)
}
