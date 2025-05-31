//
//  PickerBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct PickerBasic: View {
    
    let typeOfPhone = ["애플", "삼성", "구글", "화웨이"]
    
    @State var selectedIndex: Int = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker(selection: $selectedIndex, label: Text("핸드폰 기종")) {
                        ForEach(0..<typeOfPhone.count) { index in
                            Text(typeOfPhone[index])
                        }
                    }
//                    .pickerStyle(.menu)
//                    .pickerStyle(.wheel)
//                    .pickerStyle(.segmented)
//                    .pickerStyle(.inline)
                }
                
                Text("핸드폰 제조사는 \(typeOfPhone[selectedIndex])입니다.")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .navigationTitle("현재 사용중인 핸드폰 기종은")
        }
    }
}

#Preview {
    PickerBasic()
}
