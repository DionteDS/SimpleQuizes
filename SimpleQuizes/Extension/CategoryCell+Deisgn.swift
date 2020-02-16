//
//  CategoryCell+Deisgn.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

extension UICollectionViewCell {
    
    func designBorderBackground() {
        
        contentView.layer.cornerRadius = 10
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.black.cgColor
        contentView.layer.masksToBounds = true
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: 10).cgPath
        layer.cornerRadius = 10
        
    }
    
}
