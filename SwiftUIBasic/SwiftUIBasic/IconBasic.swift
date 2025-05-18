//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/18/25.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // SFSymbols 앱에서 아이콘 확인 및 사용 가능
            Image(systemName: "person.fill.badge.plus")
                .resizable()
                .renderingMode(.original)       // 원본 색상으로 사용 (multi color)
//                .scaledToFill()
                .scaledToFit()
                .foregroundStyle(.red)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    IconBasic()
}
