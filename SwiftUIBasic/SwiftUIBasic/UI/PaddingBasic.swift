//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            Text("Hello, Wordl!")
                .background(.yellow)
                .padding(.all, 15)       // .padding()의 기본값
                .padding(.leading, 20)    // 왼쪽 여백 20
                .background(.blue)    // padding: background 안의 요소들 간에 간격을 준다는 의미임
                .padding(.bottom, 20)     // margin과 같은 동작
            
            Divider()
            
            Text("Hello, Wordl!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)     // 아래쪽 여백 20
            
            Text("안녕하세요 헬로우 월드에 오신 여럽누 환영합니다. 안녕하세요 헬로우 월드에 오신 여럽누 환영합니다. 안녕하세요 헬로우 월드에 오신 여럽누 환영합니다.안녕하세요 헬로우 월드에 오신 여럽누 환영합니다.")
        }
        .padding()        // VStack 바깥에 여백
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 5)
            )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
