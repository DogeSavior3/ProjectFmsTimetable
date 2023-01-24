//
//  TableViewCell.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 15.08.2022.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var productButton: UIButton!
    @IBOutlet weak var productImageView: NetworkImageView!
    @IBOutlet weak var productLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        containerView.layer.cornerRadius = 8
        containerView.layer.masksToBounds = true
        containerView.backgroundColor = .white
        
        productButton.tintColor = .systemGray3
        listButton.tintColor = .systemGray3
        
        backgroundColor = .systemGray4
        
        productImageView.contentMode = .scaleAspectFit
        productImageView.layer.cornerRadius = 8
//        productImageView.layer.masksToBounds = true
    }

    func configure(with week: Week) {
        productLabel.text = week.WeekdayID + "  " + week.DateID
        productImageView.setURL(url: week.imageUrl)
        
        //make done bool section!
        
    }

}
