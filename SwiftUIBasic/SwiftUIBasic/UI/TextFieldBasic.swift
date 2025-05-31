//
//  TextFieldBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                // TextField: 한줄, 적은 양의 text 입력 시 사용
//                TextField("최소 2글자 이상 입력", text: $inputText)
////                    .textFieldStyle(.roundedBorder)
//                    .padding()
//                    .background(.gray.opacity(0.3))
//                    .cornerRadius(10)
//                    .font(.headline)
                
                // TextEditor: 여러 줄, 긴 양의 text 입력 시 사용
                TextEditor(text: $inputText)
                    .frame(height: 250)
                    .colorMultiply(.gray.opacity(0.3))
                
                Button {
                    // 이름이 2글자 이상일 때 saveText가 되도록 조건 설정
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? .blue:.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id: \.self) { userName in
                    Text(userName)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("당신의 이름은?")
        }
    }
    
    func isTextEnough() -> Bool {
        // inputText가 2글자 이상인지 확인
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = "" // 입력 필드 초기화
    }
}

#Preview {
    TextFieldBasic()
}
