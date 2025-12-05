//
//  ObservationiOS17.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 12/5/25.
//

import SwiftUI

struct ObservationiOS17: View {
    
    // 기존에 ViewModel에서 가져오기 -> EnvironmentObject로
    @EnvironmentObject var vm1: UserObservableObject
    
    // iOS 17부터 -> Environment로
    @Environment(UserObservableMacro.self) private var vm2
    
    var body: some View {
        // 위에서 vm2를 environment로 불러오고 body 안쪽에 @Bindable 해줘야 body와 연결해서 사용 가능
        @Bindable var vm3 = vm2
        
        VStack(spacing: 30) {
            Text("1. VM 비교")
                .font(.title)
            
            // vm1
            HStack {
                Menu("\(vm1.name): \(vm1.number)") {
                    ForEach(10..<20) { index in
                        Button(String(index)) {
                            vm1.number = index
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Spacer()
                
                Toggle("VM1 Toggle", isOn: $vm1.isClick)
            }
            
            // vm2
            HStack {
                Menu("\(vm2.name): \(vm2.number)") {
                    ForEach(20..<30) { index in
                        Button(String(index)) {
                            vm2.number = index
                        }
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
                
                Spacer()
                
                Toggle("VM2 Toggle", isOn: $vm3.isClick)
            }
            
            Divider()
            
            Text("2. SubView 비교")
                .font(.title)
            
            // BindingView1 연결 - @ObservedObject 사용 (MainView -> SubView 넘길때)
            BindingView1(vm1: vm1)
            
            // BindingView2 연결 - vm 연결 시 custom Object mutable 값이기 때문에 @Bindable 사용
            BindingView2(vm2: vm3)
        }
        .font(.title2)
        .padding()
    }
}

struct BindingView1: View {
    
    // 기존에 SubView에 VM을 넘길 때
    @ObservedObject var vm1: UserObservableObject
    var body: some View {
        HStack {
            Menu("\(vm1.name): \(vm1.number)") {
                ForEach(10..<20) { index in
                    Button(String(index)) {
                        vm1.number = index
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            Spacer()
            
            Toggle("VM1 Toggle", isOn: $vm1.isClick)
        }
    }
}

struct BindingView2: View {
    
    // iOS 17이후 SubView에 VM을 넘길때
    @Bindable var vm2: UserObservableMacro
    
    var body: some View {
        HStack {
            Menu("\(vm2.name): \(vm2.number)") {
                ForEach(20..<30) { index in
                    Button(String(index)) {
                        vm2.number = index
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.red)
            
            Spacer()
            
            Toggle("VM2 Toggle", isOn: $vm2.isClick)
        }
    }
}

#Preview {
    ObservationiOS17()
        .environmentObject(UserObservableObject())
        .environment(UserObservableMacro())
}
