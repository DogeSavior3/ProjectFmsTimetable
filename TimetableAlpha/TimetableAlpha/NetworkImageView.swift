//
//  NetworkImageView.swift
//  TimetableAlpha
//
//  Created by Михаил Король on 20.08.2022.
//

import UIKit

final class NetworkImageView: UIImageView {
    
    
    func setURL(url: URL?) {
        guard let url = url else {
            image = nil
            return
        }
        
        DispatchQueue.global().async {
            var image: UIImage?
            
            if let data = try? Data(contentsOf: url) {
                image = UIImage(data: data)
            }
           
            DispatchQueue.main.async {
                self.image = image
            }
        
        }
    }
}
