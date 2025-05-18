//
//  FrameBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/18/25.
//

import SwiftUI

struct FrameBasic1: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(width: 200, height: 200)  // alignment 기본값: center
                .background(.red)
            
            Divider()
            
            Text("Hello, World!")
                .font(.title)
                .background(.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                // width, height 최대한 넓게 --> minWidth는 잘 안씀
        }
    }
}

struct FrameBasic2: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, World!")
                .font(.title)
                .background(.red)
                .frame(height: 100, alignment: .top)
                .background(.orange)
                .frame(width: 200)
                .background(.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.pink)
                .frame(height: 400)
                .background(.green)
                .frame(maxWidth: .infinity, alignment: .top)
        }
    }
}

#Preview {
    FrameBasic1()
}

#Preview {
    FrameBasic2()
}
