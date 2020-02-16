//
//  CategoryViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Categories"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.setHidesBackButton(true, animated: true)
    }
    
    
    

}
