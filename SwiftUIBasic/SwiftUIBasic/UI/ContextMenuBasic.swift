//
//  ContextMenuBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct ContextMenuBasic: View {
    
    @State var statusText: String = ""
    @State var background: Color = .cyan
    
    // ContextMenu는 iOS 13 이상에서 사용할 수 있는 기능으로, 특정 UI 요소에 대해 길게 누르면 나타나는 메뉴입니다.
    
    var body: some View {
        VStack(spacing: 30) {
            
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Context Menu Test")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            .contextMenu {
                Button {
                    statusText = "공유가 되었습니다"
                    background = .yellow
                } label: {
                    Label {
                        Text("Shared Post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "신고가 되었습니다"
                    background = .red
                } label: {
                    Label {
                        Text("Report Post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
            }
        }
    }
}

#Preview {
    ContextMenuBasic()
}
