//
//  iOSDeviceViewModel.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    @Published var devices: [IOSDeviceModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        let iphone = IOSDeviceModel(name: "아이폰")
        let iPad = IOSDeviceModel(name: "아이패드")
        let appleWatch = IOSDeviceModel(name: "애플워치")
        
        self.devices.append(contentsOf: [iphone, iPad, appleWatch])
    }
}
