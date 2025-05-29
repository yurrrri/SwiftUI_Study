//
//  AnimationBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct AnimationBasic1: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        // 1
        
        VStack {
            Button {
                withAnimation(.default
//                    .repeatCount(5)
//                    .repeatForever()
                ) {
                    isAnimated.toggle()
                    // isAnimted 상태에 따라 RoundedRectangle의 속성을 애니메이션 처리하면서 변경함
                }
            } label: {
                Text("Button")
            }
            
            Spacer()
            
//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
//                .fill(isAnimated ? Color.blue : Color.red)
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300)
                .rotationEffect(.degrees(isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
         
            Spacer()
        }
    }
}

struct AnimationBasic2: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        // 2. Timing Animation
        
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }

            // .linear: 처음부터 끝까지 속도가 일정
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimated)

            // .easeIn: 처음에는 느리다가 점점 빨라짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // .easeOut: 처음에는 빠르다가 점점 느려짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)
            
            // .easeInOut: 처음에는 느리다가 점점 빨라지고, 마지막에는 다시 느려짐
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
    }
}

struct AnimationBasic3: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        // 3. Spring Animation
        
        VStack {
            Button {
                // response: 단일 진동을 완료하는 데 걸리는 시간
                // dampingFraction: 진동의 감쇠 비율, 0.0은 진동이 계속되고, 1.0은 진동이 멈춤
                // blendDuration: 다른 애니메이션 간의 전환 길이 제어
                withAnimation(.spring(
                    response: timing, dampingFraction: 0.5, blendDuration: 0)
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50, height: 100)
                
        }
    }
}


#Preview {
    AnimationBasic1()
}

#Preview {
    AnimationBasic2()
}

#Preview {
    AnimationBasic3()
}
