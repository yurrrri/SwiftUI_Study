//
//  MultiDatePickerBasic.swift
//  SwiftUIBasic
//
//  Created by 이유리 on 6/18/25.
//

import SwiftUI

struct MultiDatePickerBasic: View {
    
    // dates: MultiPickerPicker에서 선택한 날짜들
    @State var dates: Set<DateComponents> = []
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Multi Date Picker")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            MultiDatePicker("Date Picker", selection: $dates)
                .frame(height: 400)
                .tint(.red)
            
            List {
                Section("선택된 날짜") {
                    // dates는 Set이기 때문에 Array로 변환함으로써 ForEach문 돌아야함
                    ForEach(Array(dates), id: \.self) { date in
                        Text("\(date.month!)월 \(date.day!)일")
                    }
                }
                .font(.title2)
            }
        }
    }
}

struct MultidatePickerSheet: View {
    
    @State var dates: Set<DateComponents> = []
    @State var showSheet: Bool = false
    
    // 날짜 빠른 순으로 정렬 --> 계산 property
    private var sortedDates: [String] {
        dates.sorted { date1, date2 in     // 오름차순 정렬
            date1.date! < date2.date!
        }
        .map { date in
            "\(date.month!)월 \(date.day!)일"
        }
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("MultiDatePicker with Sheet")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            Button("달력 오픈") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            
            List {
                Section("선택된 날짜") {
                    // dates는 Set이기 때문에 Array로 변환함으로써 ForEach문 돌아야함
                    ForEach(sortedDates, id: \.self) { date in
                        Text(date)
                    }
                }
                .font(.title2)
            }
            
            Spacer()
        }
        .sheet(isPresented: $showSheet) {    // sheet 노출
            VStack(spacing: 10) {    // sheet에 보여줄 뷰
                
                MultiDatePicker("Sheet", selection: $dates)
                
                Button("Done") {   // sheet 닫기
                    showSheet.toggle()
                }
                .buttonStyle(.borderedProminent)
            }
            .presentationDetents([.medium])
        }
    }
}

#Preview {
    MultiDatePickerBasic()
}

#Preview {
    MultidatePickerSheet()
}
