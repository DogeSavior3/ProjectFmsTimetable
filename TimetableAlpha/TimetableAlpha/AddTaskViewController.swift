//
//  AddTaskViewController.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 25.01.2023.
//

import Foundation
import UIKit
import PinLayout
import CocoaTextField

final class AddTaskViewController: UIViewController {
    
    private let textField = CocoaTextField()
    private let DiscribeField = CocoaTextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let someView = SomeView(frame: .init())
//        let getDate = someView.getData
        
        
        title = "Создать событие"
        view.backgroundColor = .systemBackground
        
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapCloseButton))
        navigationItem.rightBarButtonItem = closeButton
        
        textField.placeholder = "Введите название события"
        textField.inactiveHintColor = UIColor(red: 209/255, green: 211/255, blue: 212/255, alpha: 1)
        textField.activeHintColor = UIColor(red: 94/255, green: 186/255, blue: 187/255, alpha: 1)
        textField.focusedBackgroundColor = UIColor(red: 236/255, green: 239/255, blue: 239/255, alpha: 1)
        textField.defaultBackgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        textField.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        textField.errorColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.7)
        textField.borderWidth = 1
        textField.cornerRadius = 11
        
        DiscribeField.placeholder = "Введите описание события"
        DiscribeField.inactiveHintColor = UIColor(red: 209/255, green: 211/255, blue: 212/255, alpha: 1)
        DiscribeField.activeHintColor = UIColor(red: 94/255, green: 186/255, blue: 187/255, alpha: 1)
        DiscribeField.focusedBackgroundColor = UIColor(red: 236/255, green: 239/255, blue: 239/255, alpha: 1)
        DiscribeField.defaultBackgroundColor = UIColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1)
        DiscribeField.borderColor = UIColor(red: 239/255, green: 239/255, blue: 239/255, alpha: 1)
        DiscribeField.errorColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 0.7)
        DiscribeField.borderWidth = 1
        DiscribeField.cornerRadius = 11
        
        view.addSubview(textField)
        view.addSubview(DiscribeField)
//        view.addSubview(getDate)
        
    }
    
   
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        textField.pin
            .top(view.safeAreaInsets.top)
            .horizontally()
            .height(75)
        
        DiscribeField.pin
            .below(of: textField)
            .marginTop(8)
            .horizontally()
            .height(75)
        
//        getDate.pin
//            .below(of: textField)
//            .marginTop(8)
//            .horizontally()
//            .height(75)
//
        
        
    }
    
    
    @objc
    private func didTapCloseButton() {
        dismiss(animated: true, completion: nil)
    }
}

//class SomeView: UIView {
//
//    let getData: UIDatePicker
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//}

