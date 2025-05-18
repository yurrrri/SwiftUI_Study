//
//  BackgroundOverlayBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/18/25.
//

import SwiftUI

struct BackgroundOverlayBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1. Background -> 배경
            Text("Hello Wolrd!")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing )
                        )
                )
                .frame(width: 120, height: 120)
            
            Divider()
            
            // 2. Overlay -> 뷰 위에 다른 뷰를 겹처서 사용하기 위한 뷰
            
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100)
                .overlay(    // background 위에 겹쳐서 나타남
                    Text("1")
                        .font(.title)
                        .foregroundColor(Color.white)
                )
                .background(
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120, height: 120)
                )
            
            Divider()
            
            // 3. Backgrund + Overlay
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100)
                    , alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 250, height: 250)
                )
                .padding()   // 뷰에 여백을 주기 위해 사용
            
            Divider()
            
            // 4. Icon
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                    // radius: 퍼지는 정도, x, y: 위치
                        .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                                .shadow(color: Color.red, radius: 10, x: 5, y: 5)
                            , alignment: .bottomTrailing
                        )
                )
                .padding()
        }
    }
}

#Preview {
    BackgroundOverlayBasic()
}
