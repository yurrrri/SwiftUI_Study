//
//  UserViewModel.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 12/5/25.
//

import Foundation

// MARK: - 기존에 만들었떤 ViewModel 방식
class UserObservableObject: ObservableObject {
    let name: String = "vm1"
    @Published var number: Int = 0
    @Published var isClick: Bool = false
}

// MARK: - iOS 17부터는 @Observable 사용하기
@Observable
class UserObservableMacro {
    let name: String = "vm2"
    var number: Int = 0
    var isClick: Bool = false
}
