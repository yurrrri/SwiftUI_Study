//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct BindingChild: View {
    
    @State var buttonColor = Color.blue
    // 상위 뷰(BindingBasic)에서 @State로 정의된 변수명과 같아야함
    // Child View에서 상위 뷰에 속성을 전달시킴
    @Binding var backgroundColor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BindingChild(backgroundColor: .constant(.orange), title: .constant("Binding Child"))    // 기본값
}
