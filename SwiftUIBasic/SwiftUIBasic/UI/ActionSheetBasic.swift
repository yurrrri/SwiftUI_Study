//
//  ActionSheetBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct ActionSheetBasic: View {
    
    @State var showActionSheet = false
    @State var resultActionSheet: String = ""
    
    var body: some View {
        VStack {
            Text(resultActionSheet)
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Circle()
                    .frame(width: 50, height: 50)
                    
                Text("Yuri Lee")
                
                Spacer()
                
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        
                }

            }.padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
            
            Spacer()
        }
//        .actionSheet(isPresented: $showActionSheet) {
//            getActionSheet()
//        }
        .confirmationDialog("ActionSheet 제목", isPresented: $showActionSheet, titleVisibility: .visible) {
            actionSheetButtons()
        } message: {
            Text("ActionSheet 내용")
        }
    }
//    
//    func getActionSheet() -> ActionSheet {
//        let sharedButton: ActionSheet.Button = .default(Text("공유하기")) {
//            resultActionSheet = "공유 되었습니다"
//        }
//        let reportButton: ActionSheet.Button = .default(Text("신고하기")) {
//            resultActionSheet = "신고 되었습니다"
//        }
//        let deleteButton: ActionSheet.Button = .default(Text("삭제")) {
//            resultActionSheet = "삭제 되었습니다"
//        }
//        let cancelButton: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(title: Text("ActionSheet 제목"), message: Text("ActionSheet 내용"), buttons: [sharedButton, reportButton, deleteButton, cancelButton])
//    }
    @ViewBuilder
    func actionSheetButtons() -> some View {
        Button("공유하기") {
            resultActionSheet = "공유 되었습니다"
        }
        Button("신고하기") {
            resultActionSheet = "신고 되었습니다"
        }
        Button("삭제") {
            resultActionSheet = "삭제 되었습니다"
        }
        Button("취소", role: .cancel) {}
    }
}

#Preview {
    ActionSheetBasic()
}
