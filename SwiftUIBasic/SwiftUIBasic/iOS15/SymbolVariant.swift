//
//  SymbolVariant.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/13/25.
//

import SwiftUI

// iOS 15 이후로, 같은 SFSymbol이라도 다른 모양으로 나타낼 수 있는 기능
struct SymbolVariant: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Symbol Variant")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            List {
//                Label("None", systemImage: "heart")
                Label("None", systemImage: "heart").symbolVariant(.none)
                Label("Fill", systemImage: "heart").symbolVariant(.fill)
                Label("Circle", systemImage: "heart").symbolVariant(.circle)
                Label("Circle Fill", systemImage: "heart").symbolVariant(.circle.fill)
                Label("Rectangle", systemImage: "heart").symbolVariant(.rectangle)
                Label("Rectangle Fill", systemImage: "heart").symbolVariant(.rectangle.fill)
                Label("Squre", systemImage: "heart").symbolVariant(.square)
                Label("Squre Fill", systemImage: "heart").symbolVariant(.square.fill)
                Label("Slash", systemImage: "heart").symbolVariant(.slash)
                Label("Slash Fill", systemImage: "heart").symbolVariant(.slash.fill)
            }
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    SymbolVariant()
}
