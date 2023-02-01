//
//  EventViewCell.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import SwiftUI

struct EventViewCell: View {
    let event: Event
    @Binding var formType: FormType?
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Image(event.image)
                        .frame(width: 20)
                    Text(event.note)
                }
                Text(
                    event.date.formatted(date: .abbreviated,
                                         time: .shortened)
                )
            }
            Spacer()
            Button {
                formType = .update(event)
            } label: {
                Text("Изм.")
            }
            .buttonStyle(.bordered)
        }
    }
}

 struct ListViewRow_Previews: PreviewProvider {
     static let event = Event(date: Date(), note: "Let's party", image: "water-wheel.jpg")
    static var previews: some View {
        EventViewCell(event: event, formType: .constant(.new))
    }
 }

