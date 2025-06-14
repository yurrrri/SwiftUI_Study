//
//  AsyncImageBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/13/25.
//

import SwiftUI

struct AsyncImageBasic: View {
    
    let url = URL(string: "https://picsum.photos/100")
    
    var body: some View {
        VStack(spacing: 20) {
            // 일반적인 AsyncImage 사용
            Text("1. 일반적인 AsyncImage 사용 예시")
                .font(.headline)
            
            AsyncImage(url: url) { Image in
                Image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {   // Image가 불러올동안 보여줄 뷰
                ProgressView()
            }
            
            Divider()
            
            // switch를 통한 Imageerror
            Text("2. Switch를 통한 Image Error 처리")
                .font(.headline)
            
            AsyncImage(url: url) { raw in
                switch raw {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                case .failure:
                    Text("Image가 로드 되지 않음")
                default:
                    Text("Image가 로드 되지 않음")
                }
            }
        }
    }
}

#Preview {
    AsyncImageBasic()
}
