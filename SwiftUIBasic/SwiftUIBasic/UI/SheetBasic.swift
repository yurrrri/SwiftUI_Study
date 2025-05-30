//
//  SheetBasㅑㅊ.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/30/25.
//

import SwiftUI

struct SheetBasic: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // Background
            Color.green.ignoresSafeArea()
            
            // Content
            Button {
                showSheet.toggle()
            } label : {
                Text("Show Sheet")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(.white)
                    .cornerRadius(10)
            }
            // 화면 90% 정도 차지
//            .sheet(isPresented: $showSheet) {
//                SheetBasic2()
//            }
            // fullScreen으로 시트 등장
            .fullScreenCover(isPresented: $showSheet) {
                SheetBasic2()
            }
        }
    }
}

#Preview {
    SheetBasic()
}
