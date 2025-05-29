//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct StateBasic: View {
    
    @State var backgroundColor = Color.green
    @State var myTitle = "아직 버튼 안눌림"
    @State var myCount = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(myCount)")
                
                HStack (spacing: 20) {
                    Button {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        myCount += 1
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // button action 정의 시, @State로 선언한 변수가 변경되면 뷰에 바로 업데이트 됨
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        myCount -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }.foregroundColor(.white)
        }
    }
}

#Preview {
    StateBasic()
}
