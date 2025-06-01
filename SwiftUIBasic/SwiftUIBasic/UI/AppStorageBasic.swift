//
//  AppStorageBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State var generalname: String?
    
    // App Storage는 앱 전체에서 데이터를 저장하고 공유할 수 있는 기능
    @AppStorage("name") var appStorageName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            // 일반적인 state
            VStack (spacing: 10) {
                Text("@State로 저장")
                    .font(.headline)
                
                Text(generalname ?? "값이 없습니다")
                
                Button {
                    generalname = "이유리"
                
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.green)
            
            // @AppStorage 사용
            VStack (spacing: 10) {
                Text("@AppStore로 저장")
                    .font(.headline)
                
                Text(appStorageName ?? "값이 없습니다")
                
                Button {
                    appStorageName = "이유리"
                } label: {
                    Text("이름 불러오기")
                }
            }
            .padding()
            .border(.blue)
        }
    }
}

#Preview {
    AppStorageBasic()
}
