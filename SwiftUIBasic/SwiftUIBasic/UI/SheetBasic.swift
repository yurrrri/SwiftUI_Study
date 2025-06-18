//
//  SheetBasic.swift
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
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }
            // MARK: iOS 16이후로 sheet 크기 커스텀 가능
            .sheet(isPresented: $showSheet) {
                Text("Custom Size Sheet입니다")
                    .presentationDetents([.small])
                    .presentationDragIndicator(.hidden)   // 시트를 위로 드래그하는 indicator visible 여부
                
            }
        }
    }
}

// Sheet Size 커스텀
extension PresentationDetent {
    static let small = Self.height(100)
}

#Preview {
    SheetBasic()
}
