//
//  TabController.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import SwiftUI

struct TabController: View {
    @EnvironmentObject var myEvents: EventManager
    var body: some View {
        TabView{
            ViewController()
                .tabItem {
                    Label("События", systemImage: "list.triangle")
                }
//            CalendarView()
//                .tabItem {
//                    Label("Неделя", systemImage: "calendar")
//                    
//                }
        }
    }
}
