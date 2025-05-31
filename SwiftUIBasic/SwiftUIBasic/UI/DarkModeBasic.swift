//
//  DarkModeBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct DarkModeBasic: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    // primaryColor와 secondaryColor는 자동으로 다크모드일때 색 변환됨
                    Text("Primary Color")
                        .foregroundStyle(.primary)
                    Text("secondary Color")
                        .foregroundStyle(.secondary)
                    Text("Black Color")
                        .foregroundStyle(.black)
                    Text("White Color")
                        .foregroundStyle(.white)
                    
                    // Asset에서 Color Set을 만들어 직접 dark, light 모드 색상을 지정할 수 있음
                    Text("Custom Color")
                        .foregroundStyle(Color("AdaptiveColor"))
                    
                    // @Environment 사용하여 Adpative 색 설정
                    Text("@Environment Color")
                        .foregroundColor(colorScheme == .light ? .green : .red)
                }
            }
        }
    }
}

#Preview {
    DarkModeBasic()
}
