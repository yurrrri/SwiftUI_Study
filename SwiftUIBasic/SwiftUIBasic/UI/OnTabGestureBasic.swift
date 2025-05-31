//
//  OnTabGestureBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

/*
 OnTabGesture: UITabGestureRecognizer와 유사한 역할을 하며, View의 클릭 이벤트를 처리할 때 사용함
 */
struct OnTabGestureBasic: View {
    // property
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40) {
            // Rectangle 박스
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            // 1. 일반적인 Button
            Button {
                isSelected.toggle()
            } label: {
                Text("1. 일반적인 Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            // 2. onTabGesture 한번 클릭시 실행
            Text("2. onTabGeture 한번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
            
            // 3. onTabGesture 두번 연속 클릭시 실행
            Text("3. onTabGeture 두번 클릭")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }

            Spacer()
        }//: VSTACK
        .padding(40)
    }
}

#Preview {
    OnTabGestureBasic()
}

