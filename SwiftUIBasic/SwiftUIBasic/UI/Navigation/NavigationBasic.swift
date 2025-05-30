//
//  NavigationBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/30/25.
//

import SwiftUI

struct NavigationBasic: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            NavigationLink {
                // 네비게이션 링크를 통해 이동할 View
                SecondNavigationView()
            } label: {        // 네비게이션을 수행할 View 구성
                Text("Second Navigation 이동")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .background(.blue)
                    .cornerRadius(10)
            }
            // 상단 페이지 제목
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode: 페이지 제목 스타일
            // .automatic: 자동, .inline - 상단에 작게, large: leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(false) // navigationBarHidden: 상단 네비게이션 바 숨기기
            // navigationBarItems : 상단 좌 우에 아이템 나타내기
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        }
        .sheet(isPresented: $showSheet) {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지 입니다")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    NavigationBasic()
}
