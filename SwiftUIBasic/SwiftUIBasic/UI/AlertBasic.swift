//
//  AlertBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct AlertBasic: View {
    
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""   // 3번 alert에 쓰이는 제목 및 메시지
    @State var alertMessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase {
        case success
        case error
    }

    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack (spacing: 20) {
                
                // 1. 기본 Alert
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("1. 기본 Alert")
                }
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("패스워드 에러입니다. 다시 확인하세요"))
                }
                
                
                // 2. function을 활용한 Alert 생성
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("2. Alert")
                }
                .alert(isPresented: $showAlert2) {
                    getAlert2()
                }
                
                // 3
                HStack (spacing: 10) {
                    Button {
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "영상 업로드에 실패했습니다. 다시 시도해주세요."
                        showAlert3.toggle()
                    } label: {
                        Text("3번 Alert 실패시")
                    }
                    
                    Button {
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "영상 업로드 에 성공했습니다."
                        showAlert3.toggle()
                    } label: {
                        Text("3번 Alert 성공시")
                    }
                }
                .alert(isPresented: $showAlert3) {
                    getAlert3()
                }
                
                // 4
                HStack (spacing: 10) {
                    Button {
                        alertType = .error
                        showAlert4.toggle()
                    } label: {
                        Text("4번 Alert 실패시")
                    }
                    
                    Button {
                        alertType = .success
                        showAlert4.toggle()
                    } label: {
                        Text("4번 Alert 성공시")
                    }
                }
                .alert(isPresented: $showAlert4) {
                    getAlert4()
                }
            }
        }
    }
    
    func getAlert2() -> Alert {
        return Alert(title: Text("메시지 삭제"),
                     message: Text("정말 메시지 삭제 하시겠습니까?"),
                     primaryButton: .destructive(Text("Delete"), action: {
                        backgroundColor = .red
                    }), secondaryButton:.cancel())
    }
    
    func getAlert3() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("확인")))
    }
    
    func getAlert4() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("성공"),
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("에러 발생 다시 확인하세요"),
                         dismissButton: .default(Text("OK"), action: {
                            backgroundColor = .red
                         }))
        case nil:
            return Alert(title: Text("에러"))
        }
    }
}

#Preview {
    AlertBasic()
}
