//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/26/25.
//

import SwiftUI

struct LazyGridBasic: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
    let title: [String] = Array(1...1000).map { "\($0) 번" }
    
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80)),
    ]
        
    var body: some View {
        
        // 1 - LazyVGrid
        ScrollView {
            
            // Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(.orange)
                .frame(height: 400)
            
            /*
             columns: 그리드 아이템
             pinnedView: 스크롤 시 헤더가 고정되는 부분
             */
            LazyVGrid(columns: columns, alignment: .center, spacing: 6, pinnedViews: [.sectionHeaders]) {
                
                // Seciton 1
                Section(header: Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.blue)
                    .padding()) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    }
                
                // Seciton 2
                Section(header: Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.red)
                    .padding()) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    }
            }
        }
        
        // 2. LazyHGrid
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                    }
                }
            }
        }

    }
}

#Preview {
    LazyGridBasic()
}
