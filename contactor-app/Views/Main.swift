//
//  Main.swift
//  contactor-app
//
//  Created by 엄서훈 on 2021/03/12.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            VSpacer(15)
            HStack() {
                VStack(alignment: .leading) {
                    Text("좋은 하루 되세요,").spoqa(.thin, size: 30)
                    Text("엄서훈님").spoqa(.bold, size: 30)
                }
                Spacer()
            }
            
            
            VStack(alignment: .leading) {
                Text("🔎 최근 1주일 간 확진자와의 접촉 이력").spoqa(.medium, size: 17)
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "checkmark.shield.fill")
                            .foregroundColor(.accentColor)
                            .font(.system(size: 20))
                        Text("확진자와 접촉한 이력이 없습니다.")
                    }
                }
                .modifier(ShadowBoxModifier())
            }
            
            VStack(alignment: .leading) {
                Text("📍 최근 1주일 간 위험 지역 방문 이력").spoqa(.medium, size: 17)
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "checkmark.shield.fill")
                            .foregroundColor(.accentColor)
                            .font(.system(size: 20))
                        Text("위험 지역에 방문한 이력이 없습니다.")
                    }
                }
                .modifier(ShadowBoxModifier())
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("💉 인근에 위치한 예방 접종 가능 병원").spoqa(.medium, size: 17)
                VStack(alignment: .leading) {
                    List(DummyVaccineCenters) { center in
                        HStack {
                            Text(center.name).spoqa(.regular, size: 15)
                                .lineLimit(1)
                            Text(center.address).spoqa(.thin, size: 15)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                    }.frame(height: 150)
                }
                .modifier(ShadowBoxModifier())
            }
            
            VStack(alignment: .center) {
                Text("정확한 정보를 얻기 위해 이 앱을 24시간 구동해 주세요")
                    .spoqa(.thin, size: 14)
            }.frame(maxWidth: .infinity)
        }
        .padding(.horizontal, 25)
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
