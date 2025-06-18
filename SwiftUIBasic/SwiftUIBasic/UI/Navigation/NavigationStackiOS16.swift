//
//  NavigationStackBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/30/25.
//

import SwiftUI

// MARK: iOS 16이후 - NavigationStack: NavigationView 대체
struct NavigationStackiOS16: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("2번째 페이지 이동", value: 40)   // 이후 화면에 넘기려는 값
                .navigationDestination(for: Int.self) { value in
                    // 넘기려는 값의 자료형 (40은 Int임)
                    VStack (spacing: 20) {    // Navigation 종착지의 뷰
                        Text("나의 나이는 \(value) 입니다")
                        Button {
                            //                            stack.removeLast() // 이전페이지로 이동
                            stack = .init() // 초기화면으로 바로 이동
                        } label: {
                            //                            Text("이전페이지로 이동하기")
                            Text("초기화면으로 이동하기")
                        }
                        
                    }
                }
        }
        
         NavigationStack {
             List {
                 NavigationLink("첫 번째 화면", value: "첫 번째 화면")
                 NavigationLink("두 번째 화면", value: "두 번째 화면")
             }
             .navigationDestination(for: String.self) { value in
                 Text("현재 화면: \(value)")
             }
         }
    }
}

#Preview {
    NavigationStackiOS16()
}
