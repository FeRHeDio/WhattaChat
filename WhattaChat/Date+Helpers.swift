//
//  Date+Helpers.swift
//  WhattaChat
//
//  Created by Fernando Putallaz on 22/12/2021.
//

import Foundation

extension Date {

    func descriptiveString(dateStyle: DateFormatter.Style = .short) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        
        let daysBetween = self.daysBetween(date: Date())
        
        if daysBetween == 0 {
            return "Today"
        } else if daysBetween == 1 {
            return "Yesterday"
        } else if daysBetween < 5 {
            let weekdayIndex = Calendar.current.component(.weekday, from: self) - 1
            return formatter.weekdaySymbols[weekdayIndex]
        }
        
        return formatter.string(from: self)
    }
    
    func daysBetween(date: Date) -> Int {
        let calendar = Calendar.current
        let day1 = calendar.startOfDay(for: self)
        let day2 = calendar.startOfDay(for: date)
        
        if let daysBetween = calendar.dateComponents([.day], from: day1, to: day2).day {
            return daysBetween
        }
        
        return 0
    }
}
