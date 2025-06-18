//
//  GaugeViewBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/14/25.
//

import SwiftUI

struct GaugeViewBasic: View {
    var body: some View {
        Gauge(value: 0.4, label: {
            
        }, currentValueLabel: {
            Text("40%")
                .font(.caption)
        })
        .gaugeStyle(.accessoryLinear)
        .tint(.red)
        .padding()

    }
}

#Preview {
    GaugeViewBasic()
}
