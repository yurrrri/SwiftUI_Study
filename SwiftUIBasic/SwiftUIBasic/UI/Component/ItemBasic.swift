//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct ItemBasic: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
    }
}

#Preview {
    ItemBasic(title: "사과", count: 2, color: .red)    // 기본값
}
