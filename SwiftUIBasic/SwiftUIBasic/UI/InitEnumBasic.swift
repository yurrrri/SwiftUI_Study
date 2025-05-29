//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수 선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    init(count: Int, fruit: Fruit) {    // View가 초기화될 떄 실행되는 함수
        self.count = count
        
        switch fruit {
        case .apple:
            self.title = "Apple"
            self.backgroundColor = .red
        case .orange:
            self.title = "Orange"
            self.backgroundColor = .orange
        }
    }
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitEnumBasic(count: 100, fruit: .apple)
        InitEnumBasic(count: 46, fruit: .orange)
    }
}
