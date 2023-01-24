//
//  TableViewController.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 15.08.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    private var weeks: [Week] = []

    override func viewDidLoad() {
        super.viewDidLoad()
         
        tableView.separatorStyle = .none
        tableView.backgroundColor = .systemGray5
        
        weeks = WeekManager.shared.loadWeeks()
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeks.count
//        return 7
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell else {
            return UITableViewCell()
        }
        
        let week = weeks[indexPath.row]
        cell.configure(with: week)
        
        return cell
    }

    
}
