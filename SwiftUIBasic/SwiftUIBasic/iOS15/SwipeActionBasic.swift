//
//  SwipeActionBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/13/25.
//

import SwiftUI

struct SwipeActionBasic: View {
    
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "복숭아"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id:\.self) {
                Text($0)
                // edge: 어디로 스와이프했을 때 실행할 것인가
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        // allowsFullSwipe: 끝까지 swipe 했을 때 동작을 수행할 것인지, 말것인지 결정하는 속성
                        Button {
                            
                        } label: {
                            Text("SAVE")
                        }
                        .tint(.green)
                        
                        Button {
                            
                        } label: {
                            Text("DELETE")
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            
                        } label: {
                            Text("SHARE")
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

#Preview {
    SwipeActionBasic()
}
