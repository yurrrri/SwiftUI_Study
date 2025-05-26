//
//  ScrollBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct ScrollBasic1: View {
    var body: some View {
        // 1. 세로 스크롤
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                        )
                }
            }
        }
    }
}

#Preview {
    ScrollBasic1()
}

struct ScrollBasic2: View {
    var body: some View {
        // 1. 세로 스크롤
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 300)
                        .overlay(
                            Text("\(index) 번")
                        )
                }
            }
        }
    }
}

#Preview {
    ScrollBasic2()
}

struct ScrollBasic3: View {
    var body: some View {
        // 중첩 스크롤뷰
        ScrollView {
            LazyVStack {   // LazyVHStack: 데이터 양이 많아지는 경우, 스크롤 되는 방향으로 화면에 보여지는 부분만 뢷ㅇ이 되었다가, 스크롤 하게되면 업데이트
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {   // LazyVHStack: 데이터 양이 많아지는 경우, 스크롤 되는 방향으로 화면에 보여지는 부분만 뢷ㅇ이 되었다가, 스크롤 하게되면 업데이트
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollBasic3()
}
