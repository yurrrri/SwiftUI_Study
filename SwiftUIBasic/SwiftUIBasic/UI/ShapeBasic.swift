//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/18/25.
//

import SwiftUI

struct ShapeBasic1: View {
    var body: some View {
        VStack(spacing: 20) {
            Circle()
            //                .stroke(.purple, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .trim(from: 0.2, to: 1)
                .stroke(.purple, lineWidth: 50)
                .frame(width: 200, height: 200)
                .padding()
            
            Ellipse()
                .stroke(.red, lineWidth: 10)
                .frame(width: 200, height: 100, alignment: .center)
            
            Capsule(style: .circular)
                .stroke(.green, lineWidth: 10)
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

struct ShapeBasic2: View {
    var body: some View {
        VStack(spacing: 20) {
            // Primary Color
            // 자동으로 색 다크지원
            RoundedRectangle(cornerRadius: 20)
                .fill(.secondary)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 200, height: 100, alignment: .center)
            
            // UIKit의 color를 그대로 사용할 수 있음
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(UIColor.secondarySystemBackground))
            
            // Assets에서 정의한 색상 사용
            RoundedRectangle(cornerRadius: 20)
                .fill(Color("CustomColor"))
                .frame(width: 200, height: 100, alignment: .center)
        }
    }
}

#Preview {
    ShapeBasic1()
//        .preferredColorScheme(.dark)   // dark mode
}

#Preview {
    ShapeBasic2()
}
