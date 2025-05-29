//
//  ExtractSubViewBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack {
            Color
                .cyan
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    
    private var contentLayer: some View {
        HStack {     // 자주쓰이는 뷰 컴포넌트화
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubViewBasic()
}
