//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct BindingBasic: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                
                // parameter로 @State 의 값에 $ 붙여주기
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
