//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/18/25.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20) {    // Vertical StackView
            Text("Hello, World!")
                .font(.title)   // font 모양
                .fontWeight(.semibold)   // 굵기 지정
            Text("hihi")
                .font(.subheadline)
                .bold()
                .underline(true, color: .red)
                .strikethrough()       // 가운데 밑줄
            
            Text("Hello world2".uppercased())
                .font(.system(size: 25, weight: .heavy, design: .serif)) // 폰트 크기, 스타일 지정
            
            Text("멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬")
                .multilineTextAlignment(.leading)   // 멀티라인 정렬
            
        }
    }
}

#Preview {
    TextBasic()
}
