//
//  SpaceViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/17/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class SpaceViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var progressBar: UIView!
    
    private var allQuestions = SpaceQuestionBank()
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
    }
    

}
