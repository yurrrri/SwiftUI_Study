//
//  TabViewBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct TabViewBasic: View {
    
    @State var initPageNumber: Int = 0
    
    var body: some View {
//        TabView(selection: $initPageNumber) {
//            HomeView(selectedTab: $initPageNumber)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("둘러보기화면")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("프로필 화면")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
        TabView(selection: $initPageNumber) {
            Tab("Home", systemImage: "house.fill", value: 0) {
                HomeView(selectedTab: $initPageNumber)
            }

            Tab("Browse", systemImage: "globe", value: 1) {
                Text("둘러보기 화면")
            }

            Tab("Profile", systemImage: "person.fill", value: 2) {
                Text("프로필 화면")
            }
        }
        .accentColor(.orange) // 탭 아이템 선택 시 색상 변경
    }
}

#Preview {
    TabViewBasic()
}

// HomeView
struct HomeView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            // background
            Color.red.edgesIgnoringSafeArea(.top)
            
            // foreground
            VStack(spacing: 20) {
                Text("홈 화면")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selectedTab = 2
                } label: {
                    Text("프로필 화면 이동")
                        .font(.headline)
                        .padding(20)
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }

            }
        }
    }
}
