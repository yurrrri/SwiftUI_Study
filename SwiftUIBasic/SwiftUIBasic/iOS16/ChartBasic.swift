//
//  ChartBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/14/25.
//

import SwiftUI
import Charts    // Chart 모듈 임포트 필요

// MARK: Sample Model and Data
struct WeightModel: Identifiable {
    var id: String = UUID().uuidString
    var day: String
    var weight: Double
}

var weightData: [WeightModel] = [
    WeightModel(day: "Sun", weight: 77),
    WeightModel(day: "Mon", weight: 80),
    WeightModel(day: "Tue", weight: 90),
    WeightModel(day: "Wed", weight: 82),
    WeightModel(day: "Thu", weight: 70),
    WeightModel(day: "Fri", weight: 60),
    WeightModel(day: "Sat", weight: 88)
]

struct ChartBasic: View {
    var body: some View {
        // custom 색 array
        let barColor: [Color] = [.red, .black, .blue, .green, .yellow, .purple, .teal]
        
        
        ScrollView {
            VStack (spacing: 20) {
                Text("1. 바형 차트")
                Chart(weightData) { item in
                    BarMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                    .foregroundStyle(by: .value("Day", item.day))   // MARK: Day를 기준으로 색 다르게하기
//                    .annotation(position: .top) {
//                        Image(systemName: "square.and.arrow.down")
//                            .foregroundStyle(.red)
//                    }      // MARK: 각주
                }
                // MARK: bar의 색을 customColor로
                .chartForegroundStyleScale(
                    domain: weightData.compactMap({ weight -> String in
                        weight.day
                    }),
                    range: barColor
                )
                .frame(height: 200)
                
                Divider()
                
                Text("2. 라인 차트")
                Chart(weightData) { item in
                    LineMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
        // MARK: 선의 굵기 지정 가능
//                    .lineStyle(StrokeStyle(lineWidth: 10))
        // MARK: 선의 symbol
//                    .symbol(by: .value("Day", item.day))
        // MARK: 선의 line 모양
//                  .interpolationMethod(.catmullRom)
                    .interpolationMethod(.linear)
                    
                    // Line Mark 에 PointMark 를 같이 사용해서 simbol 을 주게 되면 같이 사용할 수 있게 됩니다
                    PointMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                    .symbol(by: .value("Day", item.day))
                    
                } //: CHART
                .frame(height: 200)
                
                Divider()
                
                Text("3. 사각형 차트")
                Chart(weightData) { item in
                    RectangleMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                } //: CHART
                .frame(height: 200)
                
            } //: VSTACK
            
            VStack (spacing: 20) {
                Divider()
                
                Text("4.범위 차트")
                Chart(weightData) { item in
                    AreaMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                    .interpolationMethod(.catmullRom)
                    
                    RuleMark(
                        y: .value("Mid", 75)
                    )
                    .foregroundStyle(.red)
                    
                } //: CHART
                .frame(height: 200)
            }
            
        } //: SCROLL
        .padding()
    }
}

#Preview {
    ChartBasic()
}
