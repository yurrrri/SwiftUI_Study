//
//  FruitViewModel.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import Foundation

class FruitViewModel: ObservableObject {
    
    // @Published: @State와 비슷하게 상태값을 선언하나, class 안에서 @Publisehd를 사용해야 한다.
    // @Published는 Fruit 배열값이 View에서 변경되면 FruitViewModel에서 새로운 변경사항을 반영함
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruit()
    }
    
    // 비즈니스 로직 선언
    func getFruit() {
        
        let fruit1 = FruitModel(name: "딸기", count: 1)
        let fruit2 = FruitModel(name: "사과", count: 2)
        let fruit3 = FruitModel(name: "바나나", count: 80)
        
        isLoading = true
        
        // 3초 후에 fruits 배열에 추가
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.fruits.append(contentsOf: [fruit1, fruit2, fruit3])
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}
