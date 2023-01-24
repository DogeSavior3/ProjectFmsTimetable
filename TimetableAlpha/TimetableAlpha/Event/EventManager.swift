//
//  EventManager.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 20.08.2022.
//

import Foundation

protocol EventManagerProtocol {
    func loadEvents() -> [Event]
}

class EventManager: EventManagerProtocol {
    static let shared: EventManagerProtocol = EventManager()
    
    private init() {}
    
    func loadEvents() -> [Event] {
        return [
            Event(),
            Event(),
            Event(),
            Event(),
            Event(),
            Event(),
            Event()
        ]
        
        
    }
    
}
