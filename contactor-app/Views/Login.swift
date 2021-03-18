//
//  Login.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var globalState: GlobalState
    @State var userId: String = "";
    @State var userPw: String = "";
    @State var showingJoinSheet: Bool = false
    
    func fetchUserIdentity() {
        let request = RequestBuilder(
            path: "/auth",
            method: "POST",
            bodyData: [
                "username": userId,
                "password": userPw
            ]
        )

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(AuthenticationResponse.self, from: data)
                    DispatchQueue.main.async {
                        UserDefaults.standard.set(decodedResponse.accessToken, forKey: UserDefaultsKeys.accessToken.rawValue)
                        UserDefaults.standard.set(true, forKey: UserDefaultsKeys.isAuthenticated.rawValue)
                        if let encodedIdentity = try? JSONEncoder().encode(decodedResponse.identity) {
                            UserDefaults.standard.set(encodedIdentity, forKey: UserDefaultsKeys.userIdentity.rawValue)
                        }
                        globalState.isAuthenticated = true
                    }
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text("로그인")
                .spoqa(.bold, size: 40)
            VSpacer(100)
            VStack {
                TextField("아이디를 입력해 주세요", text: $userId)
                    .modifier(TextFieldModifier(iconName: "person"))
                VSpacer(20)
                SecureField("비밀번호를 입력해 주세요", text: $userPw)
                    .modifier(TextFieldModifier(iconName: "key"))
                
                VSpacer(30)
                
                Button(action: fetchUserIdentity) {
                    Text("로그인 하기")
                        .spoqa(.bold, size: 18)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 13)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }

                VSpacer(15)
                
                Button(action: { self.showingJoinSheet = true }) {
                    Text("계정이 없으신가요?")
                }
                .sheet(isPresented: $showingJoinSheet) {
                    JoinView()
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
