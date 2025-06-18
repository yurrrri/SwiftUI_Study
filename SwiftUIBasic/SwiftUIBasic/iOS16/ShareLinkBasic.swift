//
//  ShareLinkBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/14/25.
//

import SwiftUI

struct ShareLinkBasic: View {
    
    let natureImage = ImageFile(image: Image("nature"))
    
    var body: some View {
        VStack (spacing: 20) {
            VStack (spacing: 20) {
                // URL ShareLink
                ShareLink(item: URL(string: "https://devyul.tistory.com")!) {
                    Text("링크 Share")
                        .font(.largeTitle)
                }
                
                // Image ShareLink
                ShareLink(item: natureImage, preview: SharePreview("Nature 사진", image: natureImage.image)) {
                    Text("이미지 Share")
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}

#Preview {
    ShareLinkBasic()
}
