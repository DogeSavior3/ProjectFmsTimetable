//
//  StartView.swift
//  StartView
//
//  Created by Михаил Король on 25.08.2022.
//

import SwiftUI

@main
struct StartView: App {
    @StateObject var myEvents = EventManager(preview: true)
    
    var body: some Scene {
        WindowGroup {
            TabController()
                .environmentObject(myEvents)
        }
    }
}
