//
//  DatePicker.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 5/31/25.
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var selectedDate = Date()
    @State var selectedDate2 = Date()
    @State var selectedDate3 = Date()
    @State var selectedDate4 = Date()
    
    // 현재 시간 String으로 화면에 나타내기
    var currentDate: String {
        // Date() --> 오늘 날짜
        let current = Date()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        
        // 형태 변환
        formatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        // String 타입으로 변환해서 return
        return formatter.string(from: current)
    }
    
    // DatePicker용 DateFormatter
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(spacing: 20) {
                Text("현재 시간: \(currentDate)")
                
                Divider()
                
                // 기본 DatePicker
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate)
                        .accentColor(.red)
                        .datePickerStyle(.compact)
                    
                    Text("선택된 날짜: \(dateToKR(selectedDate: selectedDate))")
                }
                
                Divider()
                
                // 달력형태
                VStack {
                    DatePicker("달력", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜: \(dateToKR(selectedDate: selectedDate2))")
                }
                
                Divider()
                
                // 휠 스타일 picker
//                VStack {
//                    DatePicker("휠", selection: $selectedDate3)
//                        .datePickerStyle(.wheel)
//                    Text("선택된 날짜: \(dateToKR(selectedDate: selectedDate2))")
//                }
                
                // 날짜 or 시간만 선택
                
                VStack {
//                    DatePicker("날짜만 선택", selection: $selectedDate4, displayedComponents: [.date])
                    DatePicker("시간만 선택", selection: $selectedDate4, displayedComponents: [.hourAndMinute])

                    Text("선택된 날짜: \(dateToKR(selectedDate: selectedDate2))")
                }
            }.padding()
        }
    }
    
    func dateToKR(selectedDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko_KR")
        
        // 형태 변환
        formatter.dateFormat = "yyyy년 MM월 dd일 HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        // String 타입으로 변환해서 return
        return formatter.string(from: selectedDate)
    }
}

#Preview {
    DatePickerBasic()
}
