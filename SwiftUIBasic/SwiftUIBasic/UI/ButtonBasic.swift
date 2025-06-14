//
//  ButtonBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/29/25.
//

import SwiftUI

struct ButtonBasic1: View {
    
    // @State: 상태값을 저장하고, 변경될 때마다 View를 업데이트해줌, 상태 관리
    @State var mainTitle: String = "아직 버튼 안눌림"

    var body: some View {
        VStack (spacing: 20) {
            
            // 라벨
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 1번 버튼
            Button {
                // button 클릭 시 action 처리
                self.mainTitle = "기본 버튼 눌림"
            } label: {    // label:는 버튼의 내용
                Text("기본 버튼")
            }
            .accentColor(.red)     // 기본 색: blue
            
            Divider()
            
            // 2번 버튼
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            Divider()
            
            // 3번 버튼 - 아이콘
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            // 4번 버튼
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2)
                    )
            }
        }
    }
}

// iOS 15이후 Button Style 지정 가능
struct ButtonBasic2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("1. 일반적인 Button Style")
                    .font(.headline)
                
                Button {
                
                } label: {
                    Text("Plain buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.plain)
                                
                Button {
                
                } label: {
                    Text("bordered buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.bordered)
                                
                Button {
                
                } label: {
                    Text("borderedProminent buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                                
                Button {
                
                } label: {
                    Text("borderless buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderless)
            }
            
            Divider()
            
            VStack {
                Text("2. ControlSize로 버튼 크기 자동 설정")
                    .font(.headline)
                
                Button {
                
                } label: {
                    Text("large controlSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                                
                Button {
                
                } label: {
                    Text("regular buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                                
                Button {
                
                } label: {
                    Text("small buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                
                Button {
                
                } label: {
                    Text("mini buttonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
            }
        }
    }
}

#Preview {
    ButtonBasic1()
}

#Preview {
    ButtonBasic2()
}
