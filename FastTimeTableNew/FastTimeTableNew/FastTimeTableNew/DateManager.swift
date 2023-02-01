//
//  DateManager.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import Foundation

extension Date {
    func diff(numDays: Int) -> Date {
        Calendar.current.date(byAdding: .day, value: numDays, to: self)!
    }
    
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}
