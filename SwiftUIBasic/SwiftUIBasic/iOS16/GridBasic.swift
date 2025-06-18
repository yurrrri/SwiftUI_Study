//
//  GridBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/14/25.
//

import SwiftUI

struct GridBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            Grid {
                GridRow {
                    Color.red
                    Color.red
                    Color.red
                }
                GridRow {
                    Color.red
                        .frame(width:100, height:100)
                    Color.red
                        .frame(width:50, height:50)
                        .gridCellColumns(1)
                        .gridCellAnchor(.top)
                }
            }
            .frame(height: 200)
        }
        .padding()
    }
}

#Preview {
    GridBasic()
}
