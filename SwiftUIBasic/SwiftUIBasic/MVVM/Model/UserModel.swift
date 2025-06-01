//
//  UserModel.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
