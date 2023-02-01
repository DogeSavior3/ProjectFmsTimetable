//
//  ViewModel.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var date = Date()
    @Published var note = ""
    @Published var image = ""
    
    var id: String?
    var updating: Bool { id != nil }

    init() {}

    init(_ event: Event) {
        date = event.date
        note = event.note
        image = event.image
        id = event.id
    }

    var incomplete: Bool {
        note.isEmpty
    }
}
