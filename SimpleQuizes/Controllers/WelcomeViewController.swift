//
//  WelcomeViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/15/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var nextBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nextBtn.layer.cornerRadius = 20.0
        nextBtn.layer.borderWidth = 2
        nextBtn.layer.borderColor = UIColor.black.cgColor
        nextBtn.layer.masksToBounds = true
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 49/255, green: 57/255, blue: 94/255, alpha: 1.0)
        
    }
    
    
    @IBAction func nextDidTapped(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToCategoryVC", sender: self)
        
    }
    

}
