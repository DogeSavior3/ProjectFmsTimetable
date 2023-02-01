//
//  FormType.swift
//  FastTimeTableNew
//
//  Created by Михаил Король on 27.01.2023.
//

import SwiftUI

enum FormType: Identifiable, View {
    case new
    case update(Event)
    var id: String {
        switch self {
        case .new:
            return "new"
        case .update:
            return "update"
        }
    }

    var body: some View {
        switch self {
        case .new:
            return AddTaskViewController(viewModel: ViewModel())
        case .update(let event):
            return AddTaskViewController(viewModel: ViewModel(event))
        }
    }
}

