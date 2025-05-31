//
//  ToggleBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct ToggleBasic: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태:")
                Text(toggleIsOn ? "로그인" : "로그아웃")
            }
            Toggle(isOn: $toggleIsOn) {
                Text("로그인 상태 선택")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue)) // 토글 스타일 변경
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBasic()
}
