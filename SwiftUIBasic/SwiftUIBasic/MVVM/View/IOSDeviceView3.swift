//
//  IOSDeviceView3.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // @StateObject 에서 선언한 viewModel 을 @EnvironmentObject 를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            //background
            Color.blue.ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 20) {
                    ForEach(viewModel.devices) { item in
                        Text(item.name)
                    } //: LOOP
                } //:VSATCK
                .foregroundColor(.white)
                .font(.largeTitle)
            } //: SCROLL
        } //: ZSTACK
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel()) // ViewModel을 환경 객체로 설정
}
