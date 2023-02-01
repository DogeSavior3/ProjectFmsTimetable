//
//  AddTaskViewController.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import SwiftUI

struct AddTaskViewController: View {
    @EnvironmentObject var eventManager: EventManager
    @StateObject var viewModel: ViewModel
    @Environment(\.dismiss) var dismiss
    @FocusState private var focus: Bool?
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    DatePicker(selection: $viewModel.date) {
                        Text("Дата и время")
                    }
                    TextField("Название события", text: $viewModel.note, axis: .vertical)
                        .focused($focus, equals: true)
                    Section(footer:
                                HStack {
                        Spacer()
                        Button {
                            if viewModel.updating {
                                // update this event
                                let event = Event(id: viewModel.id!,
                                                  date: viewModel.date,
                                                  note: viewModel.note,
                                                  image: viewModel.image)
                                eventManager.update(event)
                            } else {
                                // create new event
                                let newEvent = Event(date: viewModel.date,
                                                     note: viewModel.note,
                                                     image: viewModel.image)
                                eventManager.add(newEvent)
                            }
                            dismiss()
                        } label: {
                            Text(viewModel.updating ? "Обновить" : "Добавить событие")
                        }
                        .buttonStyle(.borderedProminent)
                        .disabled(viewModel.incomplete)
                        Spacer()
                    }
                    ) {
                        EmptyView()
                    }
                }
            }
            .navigationTitle(viewModel.updating ? "Обновить" : "Новое событие")
            .onAppear {
                focus = true
            }
        }
    }
}

struct EventFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskViewController(viewModel: ViewModel())
            .environmentObject(EventManager())
    }
}
