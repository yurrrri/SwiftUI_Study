//
//  FruitModel.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
