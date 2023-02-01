//
//  EventManager.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import Foundation

@MainActor
class EventManager: ObservableObject {
    @Published var events = [Event]()
    @Published var preview: Bool
    @Published var changedEvent: Event?
    @Published var movedEvent: Event?

    init(preview: Bool = false) {
        self.preview = preview
        fetchEvents()
    }

    func fetchEvents() {
        if preview {
            events = Event.sampleEvents
        } else {
            // load from your persistence store
        }
    }

    func delete(_ event: Event) {
        if let index = events.firstIndex(where: {$0.id == event.id}) {
            changedEvent = events.remove(at: index)
        }
    }

    func add(_ event: Event) {
        events += [event]
        changedEvent = event
    }

    func update(_ event: Event) {
        if let ind = events.firstIndex(where: {$0.id == event.id}) {
            movedEvent = events[ind]
            events[ind].date = event.date
            events[ind].note = event.note
            events[ind].image = event.image
            changedEvent = event
        }
    }

}
