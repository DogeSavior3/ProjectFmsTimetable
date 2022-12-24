//
//  WeekManager.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 20.08.2022.
//

import Foundation

protocol WeekManagerProtocol {
    func loadWeeks() -> [Week]
}

class WeekManager: WeekManagerProtocol {
    static let shared: WeekManagerProtocol = WeekManager()
    
    private init() {}
    
    func loadWeeks() -> [Week] {
        return [
            Week(WeekdayID: "Понедельник", DateID: "15.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Вторник", DateID: "16.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Среда", DateID: "17.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Четверг", DateID: "18.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Пятница", DateID: "19.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Суббота", DateID: "20.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: ""),
            Week(WeekdayID: "Воскресенье", DateID: "21.08", imageUrl: URL(string: "https://fs-thb02.getcourse.ru/fileservice/file/thumbnail/h/a7f49620b05e5373d6c9e3ba2048f1d8.jpg/s/s1200x/a/11036/sc/147"), Work: "")
        ]
        
        
    }
    
}
