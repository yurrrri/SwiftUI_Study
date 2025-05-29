//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/28/25.
//

import SwiftUI

/*
 IgnoreSafeArea는 SwiftUI에서 안전 영역을 무시하고 전체 화면을 사용할 수 있게 해주는 기능입니다.
 */

struct IgnoreSafeAreaBasic1: View {
    var body: some View {
        ZStack {
            // background
            Color.blue
                .ignoresSafeArea()    // .all 속성이 기본값
//                .ignoresSafeArea(edges: .top) // 상단 안전 영역 무시
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
        }
    }
}

struct IgnoreSafeAreaBasic2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("Item \(index)")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    IgnoreSafeAreaBasic1()
}

#Preview {
    IgnoreSafeAreaBasic2()
}
