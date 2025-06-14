//
//  BadgeBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/13/25.
//

import SwiftUI

struct BadgeBasic1: View {
    var body: some View {
        
        TabView {
            // 1번
            Color.red.ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge(0)
            
            // 2번
            Color.green.ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge(5)
            
            // 3번
            Color.blue.ignoresSafeArea(edges: .top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge("NEW")
            
        }
    }
}

struct BadgeBasic2: View {
    var body: some View {
        
        List {
            Text("Hello")
                .badge("New Items!")
        }
    }
}

#Preview {
    BadgeBasic1()
}

#Preview {
    BadgeBasic2()
}
