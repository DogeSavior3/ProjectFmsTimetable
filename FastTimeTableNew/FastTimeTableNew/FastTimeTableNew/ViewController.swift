//
//  ViewController.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import SwiftUI

struct ViewController: View {
    @EnvironmentObject var myEvents: EventManager
    @State private var formType: FormType?
    var body: some View {
        NavigationStack {
            List {
                ForEach(myEvents.events.sorted {$0.date < $1.date}) { event in
                    EventViewCell(event: event, formType: $formType)
                    .swipeActions {
                        Button(role: .destructive) {
                            myEvents.delete(event)
                        } label: {
                            Image(systemName: "trash")
                        }
                    }
                }
            }
            .navigationTitle("События")
            .sheet(item: $formType) { $0 }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        formType = .new
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.medium)
                    }
                }
            }
        }
    }
}

struct EventsListView_Previews: PreviewProvider {
    static var previews: some View {
        ViewController()
            .environmentObject(EventManager(preview: true))
    }
}
