//
//  TransitionBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct TransitionBasic: View {
    
    // property
    @State var showTrasition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTrasition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                
                Spacer()
            }
            
            if showTrasition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTrasition ? 1.0 : 0.0)
                
                // 1번 move transition
//                     .transition(.move(edge: .bottom))
                
                // 2번 opacity transition
//                     .transition(.opacity)
                
                // 3번 scale transition
//                     .transition(.scale)
                
                // 4번 asymmetric transtion - 시작점 끝나지점을 custom 정해주기 때문에 비대칭 transition
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
        // 하단 safearea 무시
    }
}

#Preview {
    TransitionBasic()
}
