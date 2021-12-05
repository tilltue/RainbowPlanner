//
//  MainView.swift
//  RainbowPlanner
//
//  Created by tilltue on 2021/11/28.
//  Copyright © 2021 tilltue. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        CalendarView()
    }
}

struct CalendarView: View {
    var body: some View {
        VStack {
            Text("September 2020").padding()
            HStack {
                ForEach(["월", "화", "수", "목", "금", "토", "일"], id: \.self) {
                    Text($0)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(.brown)
                }
            }
            HStack {
                let array = [30,31] + Array(1...30) + Array(1...10)
                let week = array.chunked(into: 7)
                    .enumerated()
                    .map { offset, array in
                        WeekItem(id: offset, days: array.map{ DayItem(id: UUID().hashValue, day: "\($0)") })
                    }
                VStack {
                    ForEach(week) { weekItem in
                        HStack {
                            ForEach(weekItem.days) {
                                Text($0.day)
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .background(.brown)
                                    .padding([.top, .bottom], 3)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct WeekItem: Identifiable {
    let id: Int
    let days: [DayItem]
}

struct DayItem: Identifiable {
    let id: Int
    let day: String
}

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
