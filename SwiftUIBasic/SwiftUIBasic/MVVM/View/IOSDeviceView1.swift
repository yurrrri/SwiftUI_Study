//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel을 초기화할때는 @StateObject로 불러오기
    @StateObject var viewModel = IOSDeviceViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.devices) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }
                    
                }
            }
        }
        .environmentObject(viewModel)   // ViewModel을 하위 뷰에 전달
    }
}

#Preview {
    IOSDeviceView1()
}
