//
//  StackBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct StackBasic: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height : 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
        }
        
        HStack(spacing: 20) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height : 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
        }
    }
}

struct StackBasic2: View {
    var body: some View {
        
        // ZStack: 위로 겹쳐서 쌓는 Stack
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(.orange)
                .frame(width: 100, height : 100)
            
            Rectangle()
                .fill(.green)
                .frame(width: 50, height: 50)
        }
        
        // 4. Stack 응용
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}


// 5. ZStack vs Background
struct StackBasic3: View {
    var body: some View {
        // ZStack을 사용하여 원에 1을 표현 - layer가 복잡할 때 ZStack 사용
        VStack(spacing: 50) {
            
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(Color.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StackBasic()
}

#Preview {
    StackBasic2()
}

#Preview {
    StackBasic3()
}
