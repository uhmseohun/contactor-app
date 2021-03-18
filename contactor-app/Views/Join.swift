//
//  Join.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/18.
//

import SwiftUI

struct JoinView: View {
    @State var userId: String = "";
    @State var userPw: String = "";
    @State var userName: String = "";
    @State var userPhone: String = "";
    @State var userBirthdate: Date = Date();
    @State var userStreetAddress: String = "";
    @State var userDetailAddress: String = "";

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("회원가입")
                .spoqa(.bold, size: 40)
            TextField("아이디를 입력해 주세요", text: $userId)
                .modifier(TextFieldModifier(iconName: "person"))
            SecureField("비밀번호를 입력해 주세요", text: $userPw)
                .modifier(TextFieldModifier(iconName: "key"))
            TextField("이름을 입력해 주세요", text: $userName)
                .modifier(TextFieldModifier(iconName: "person"))
            TextField("전화번호를 입력해 주세요", text: $userPhone)
                .modifier(TextFieldModifier(iconName: "phone"))
            TextField("자택 주소를 입력해 주세요", text: $userStreetAddress)
                .modifier(TextFieldModifier(iconName: "house"))
            TextField("상세 주소를 입력해 주세요", text: $userDetailAddress)
                .modifier(TextFieldModifier(iconName: "house"))
            DatePicker(
                "생년월일을 선택해 주세요",
                selection: $userBirthdate,
                displayedComponents: [.date]
            ).modifier(TextFieldModifier(iconName: "calendar"))
            VSpacer(15)
            Button(action: {}) {
                Text("가입하기")
                    .spoqa(.bold, size: 18)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 13)
                    .background(Color.purple)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }
        }
        .padding(.horizontal, 25)
    }
}

struct Join_Previews: PreviewProvider {
    static var previews: some View {
        JoinView()
    }
}
