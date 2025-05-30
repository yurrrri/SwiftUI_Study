//
//  NavigationStackBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/30/25.
//

import SwiftUI

// iOS 16이후 NavigationStack

struct NavigationStackBasic: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        // 1번째 : NavigationStack을 이용한 화면 이동
        NavigationStack(path: $stack) {
            NavigationLink("2번째 페이지 이동", value: 40)   // 이후 화면에 넘기려는 값
                .navigationDestination(for: Int.self) { value in
                    VStack (spacing: 20) {
                        NavigationLink("3번째 페이지 이동", value: 100)
                        Text("나의 나이는 \(value) 입니다")
                        Button {
//                            stack.removeLast() // 이전페이지로 이동
                            stack = .init() // 초기화면으로 바로 이동
                        } label: {
//                            Text("이전페이지로 이동하기")
                            Text("초기화면으로 이동하기")
                        }

                    } //: VSTACK
                }
        } //: NAVIGATIONSTACK
        
        // 2번째 : List로 한꺼번에 관리
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
    NavigationStackBasic()
}
