//
//  IOSDeviceView1.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct IOSDeviceView2: View {

    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack (spacing: 20) {
                Text("당신이 선택한 기기는?")
                    .font(.title)
                
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(20)
                
                NavigationLink {
                    IOSDeviceView3()
                } label: {
                    Text("다음 페이지로 이동 -> ")
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(20)
                }

            }
        }
    }
}

#Preview {
    IOSDeviceView2(selectedItem: "아이폰")
}
