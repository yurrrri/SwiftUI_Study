//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct ButtonBasic: View {
    
    // @State: 상태값을 저장하고, 변경될 때마다 View를 업데이트해줌, 상태 관리
    @State var mainTitle: String = "아직 버튼 안눌림"

    var body: some View {
        VStack (spacing: 20) {
            
            // 라벨
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 1번 버튼
            Button {
                // button 클릭 시 action 처리
                self.mainTitle = "기본 버튼 눌림"
            } label: {    // label:는 버튼의 내용
                Text("기본 버튼")
            }
            .accentColor(.red)     // 기본 색: blue
            
            Divider()
            
            // 2번 버튼
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            // 3번 버튼 - 아이콘
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            // 4번 버튼
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }
        }
    }
}

#Preview {
    ButtonBasic()
}
