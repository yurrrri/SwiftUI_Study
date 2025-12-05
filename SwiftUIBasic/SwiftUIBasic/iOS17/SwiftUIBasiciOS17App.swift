//
//  SwiftUIBasiciOS17App.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 12/5/25.
//

import SwiftUI

struct SwiftUIBasiciOS17App: App {
    // 기존에 ObservableObject의 ViewModel을 가져올 때 사용하던 방식
    @StateObject private var vm1 = UserObservableObject()
    // iOS 17 이후의 방식
    @State private var vm2 = UserObservableMacro()
    
    var body: some Scene {
        WindowGroup {
            ObservationiOS17()
                .environmentObject(vm1) // 기존 방식: EnvironmentObject로 넘겨줌
                .environment(vm2)  // iOS 17 부터는 environment로 그냥 넘김
        }
    }
}
