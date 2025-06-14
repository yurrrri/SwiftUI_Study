//
//  BackgroundMaterialBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/13/25.
//

import SwiftUI

struct BackgroundMaterialBasic: View {
    
    let url = URL(string: "https://picsum.photos/1000")
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
                Text("Material Background 예시")
                    .font(.headline)
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(.ultraThinMaterial)
            .background(.ultraThickMaterial)
        }
        .background(.green)
        
//        AsyncImage(url: url) { image in
//            image
//        } placeholder: {
//            ProgressView()
//        }
    }
}

#Preview {
    BackgroundMaterialBasic()
}
