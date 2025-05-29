//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct ForEachLoopBasic: View {
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "안녕하세요", "Bonjour", "Hola"]
    
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호: \(index)번")
                }
            }
            
            Divider()
            
            // id: \.self는 각 요소가 고유한 식별자를 가지고 있다는 것을 의미
            ForEach(data, id: \.self) { item in
                HStack {
                    Text(item)
                }
            }
        }
    }
}

#Preview {
    ForEachLoopBasic()
}
