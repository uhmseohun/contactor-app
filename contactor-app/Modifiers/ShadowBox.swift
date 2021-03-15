//
//  ShadowBox.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

struct ShadowBoxModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color("Shadow"), radius: 3, x: 3, y: 3)
    }
}

struct ShadowBoxModifier_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading) {
            Text("ShadowBoxModifier")
        }
        .modifier(ShadowBoxModifier())
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
