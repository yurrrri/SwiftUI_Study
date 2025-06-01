//
//  UserModelBasicView.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct UserModelBasicView: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "철수", userName: "철수123", followerCount: 100, isChecked: true),
        UserModel(displayName: "영희", userName: "영희123", followerCount: 55, isChecked: false),
        UserModel(displayName: "길동", userName: "길동123", followerCount: 300, isChecked: true),
        UserModel(displayName: "유리", userName: "유리123", followerCount: 60, isChecked: false),
        UserModel(displayName: "한나", userName: "한나123", followerCount: 100, isChecked: true),
        ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    // ForEach에 id: \.self 넣을 필요 없음 --> UserModel에 이미 고유한 uuid를 할당했기 때문에
                    HStack(spacing: 20) {
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                        
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("회원 리스트")
        }
    }
}

#Preview {
    UserModelBasicView()
}
