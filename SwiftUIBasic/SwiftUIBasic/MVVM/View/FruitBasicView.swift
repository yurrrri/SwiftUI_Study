//
//  FruitBasicView.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/1/25.
//

import SwiftUI

struct FruitBasicView: View {
    
    // @ObservedObject 사용하여 ViewModel 객체화하기 -> SubView에서 부모 View의 값을 넘겨받았을 때 사용
//    @ObservedObject var fruitViewModel = FruitViewModel()
    
    // @StateObject 사용하여 ViewModel 객체화하기 -> View에서 ViewModel을 생성할 때 사용 (부모 View에서 사용)
    @StateObject var fruitViewModel = FruitViewModel()

    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                }
            }
//            .onAppear {    // View가 나타날 때 실행되는 함수
//                fruitViewModel.getFruit()
//            }
            .navigationTitle("과일 리스트")
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }))
        }
    }
}

// SecondScreen

struct SecondScreen: View {
    
    // property
    // 이미 @StateObject 에서 ViewModel 을 초기화 하였고, SubView에 넘겨 주었기 때문에 2중으로 초기화가 된것입니다. 이렇게 되면 상위뷰와 하위뷰가 연결되지 않고 독립적인 상태가 됩니다.
//    @ObservedObject var fruitViewModel = FruitViewModel()
    @ObservedObject var fruitViewModel: FruitViewModel
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            // background
            Color.green.ignoresSafeArea()
            
            // forground
            VStack (spacing: 20) {
                ForEach(fruitViewModel.fruits) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                } //: LOOP
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("뒤로 가기")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }

            } //: VSTACK
        } //: ZSTACK
    }
}

#Preview {
    FruitBasicView()
}
