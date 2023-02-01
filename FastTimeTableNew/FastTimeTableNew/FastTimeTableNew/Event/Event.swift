//
//  Event.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import Foundation
import SwiftUI

struct Event: Identifiable {
    
    var image: String
    var date: Date
    var note: String
    var id: String
    
    var dateComponents: DateComponents {
        var dateComponents = Calendar.current.dateComponents(
            [.month,
             .day,
             .year,
             .hour,
             .minute],
            from: date)
        dateComponents.timeZone = TimeZone.current
        dateComponents.calendar = Calendar(identifier: .gregorian)
        return dateComponents
    }

    init(id: String = UUID().uuidString, date: Date, note: String, image: String) {
        self.date = date
        self.note = note
        self.id = id
        self.image = image
    }

    static var sampleEvents: [Event] {
        return [
            Event(date: Date().diff(numDays: 0), note: "Гранит науки", image: "water-wheel.jpg"),
            Event(date: Date().diff(numDays: -1), note: "Твое призвание - Финансист", image: "water-wheel.jpg"),
            Event(date: Date().diff(numDays: 6), note: "ОММО", image: "water-wheel.jpg"),
            Event(date: Date().diff(numDays: 2), note: "Сдача проекта", image: "water-wheel.jpg"),
            Event(date: Date().diff(numDays: -3), note: "Встреча с научным руководителем", image: "water-wheel.jpg"),
            Event(date: Date().diff(numDays: 30), note: "Всесибирская олимпиада ИНФ", image: "water-wheel.jpg")
        ]
    }
}
