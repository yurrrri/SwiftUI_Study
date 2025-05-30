//
//  SheetBasic2.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/30/25.
//

import SwiftUI

struct SheetBasic2: View {
    
    // @Environment: 시스템이나 부모 뷰가 제공하는 환경 값을 주입받는데 사용
    // \.presentationMode: 현재 뷰의 표시 상태를 관리하는 환경 값
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    SheetBasic2()
}
