//
//  ExtractView.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct ExtractView: View {
    
    @State var backgroundColor = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
        
            contentLayer
        }
    }
    
    private var contentLayer: some View {    // 자주쓰이는 뷰 컴포넌트화
        VStack {
            Text("Extract View")
                .font(.largeTitle)
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ExtractView()
}
