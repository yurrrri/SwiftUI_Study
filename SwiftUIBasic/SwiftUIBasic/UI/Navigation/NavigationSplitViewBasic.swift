//
//  NavigationSplitViewBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/18/25.
//

import SwiftUI

struct NavigationSplitViewBasic: View {
    var body: some View {
        NavigationSplitView {
            
            Text("Sidebar")
                .navigationTitle("NavigationSplitView")
        } detail: {
            // iPad일 경우에만 Detil 나옴
            Text("Detail")
        }
    }
}

struct NavigationSplitVisibility: View {
    
    @State private var visibility =
    NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            Text("Sidebar")
        } detail: {
            Text("Detail")
            Button("Show SideBar") {
                visibility = .all
            }
        }

    }
}

struct NavigationSplitViewThree: View {
    
    @State private var visibility =
    NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            // Sidebar
            Text("SideBar")
                .navigationSplitViewColumnWidth(120)
        } content: {
            // 중간 Content
            Text("Content")
                .navigationSplitViewColumnWidth(min: 900, ideal: 1000)
        } detail: {
            // 마지막 Detail
            Text("Detail")
                .navigationSplitViewColumnWidth(200)
        }
        // .automatic: Width 설정 한 값에 크기 맞추기
        // .balanced: SideBar와 Content가 보이게 되면 Detail 부분이 줄어듦
        // .prominentDetail: Detail부분이 main에 위치하게 됨
        .navigationSplitViewStyle(.automatic)
    }
}

#Preview {
    NavigationSplitViewBasic()
}

#Preview {
    NavigationSplitVisibility()
}

#Preview {
    NavigationSplitViewThree()
}
