//
//  ViewThatFitsBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/15/25.
//

import SwiftUI

struct ViewThatFitsBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("1. ViewThatFit Horizontal")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            // View 의 사이즈를 축정해서 in .horizontal 방향으로 측정하기
            // 아이폰 스크린 사이즈에 맞춰서 측정함 Width 값이 700임으로 그거보다 작은 경우에는 그다음 도형을 자동으로 선택함
            ViewThatFits(in: .horizontal) {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.pink.opacity(0.7))
                    .overlay {
                        Text("가로모드 LandScape")
                    }
                    .frame(width: 700, height: 75)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.orange.opacity(0.7))
                    .overlay {
                        Text("세로모드 Portrait")
                    }
                    .frame(width: 350, height: 75)
                
            }
        }
        .font(.title)
        .padding()
    }
}


struct ViewThatFitVertical: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("2. ViewThatFit Vertical")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .vertical) {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.purple.opacity(0.7))
                    .overlay {
                        Text("세로모드 Portrait")
                    }
                    .frame(width: 200, height: 500)
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.blue.opacity(0.7))
                    .overlay {
                        Text("가로모드 Landscape")
                    }
                    .frame(width: 400, height: 100)
                
            }
        }
        .font(.title)
        .padding()
    }
}

struct ViewThatFitPractice: View {
    
    @State var count: Int = 1
    
    
    var body: some View {
        VStack (spacing: 20) {
            Text("연습")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .vertical) {
                // Vertical 방향으로 사이즈를 계산한 다음에 페이지 안넘가면 첫번째 적용
                VStack (spacing: 10) {
                    ForEach(1...count, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.red)
                            .frame(height: 200)
                    }
                }
                
                // ViewThatFit 안에 스크린 밖으로 넘어가면 ScrollView 각 적용되게 함
                ScrollView {
                    VStack (spacing: 10) {
                        ForEach(1...count, id: \.self) { index in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.red)
                                .frame(height: 200)
                        }
                    }
                }
                
            }
            .onTapGesture {  // 뷰를 클릭하면 count+1되어 직사각형이 늘어남
                count += 1
            }
            
            
            Spacer()
        }
        .font(.title)
        .padding()
    }
}


#Preview("Horizontal") {
    ViewThatFitsBasic()
}

#Preview("Vertical") {
    ViewThatFitVertical()
}

#Preview("Practice") {
    ViewThatFitPractice()
}
