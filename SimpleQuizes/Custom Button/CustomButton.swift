//
//  CustomButton.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/14/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setCircle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setCircle()
    }
    
    func setCircle() {
        
        layer.cornerRadius = bounds.width / 2
        layer.masksToBounds = true
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        
    }

}
