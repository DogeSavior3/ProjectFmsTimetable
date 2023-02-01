//
//  Event.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 18.08.2022.
//

import Foundation

struct Task {
    let Text: String = ""
    let IsDone: Bool = false
}

struct Event {
    let EndDate: Date? = nil
    let EventTag: String = ""
    let EventDis: String = ""
    let Task: [Task?] = []
    
}
