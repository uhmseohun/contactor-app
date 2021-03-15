//
//  Login.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

struct LoginView: View {
    @State var userId: String = "";
    @State var userPw: String = "";
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("로그인")
                .spoqa(.bold, size: 40)
            VSpacer(100)
            VStack {
                TextField("아이디를 입력해 주세요", text: $userId)
                    .modifier(TextFieldModifier(iconName: "person"))
                VSpacer(20)
                TextField("비밀번호를 입력해 주세요", text: $userPw)
                    .modifier(TextFieldModifier(iconName: "key"))
                
                VSpacer(30)
                
                Button(action: {}) {
                    Text("로그인")
                        .spoqa(.bold, size: 18)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                VSpacer(10)
            }
        }
        .padding(.horizontal, 25)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
