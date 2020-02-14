//
//  ViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/14/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var allQuestions = ScienceQuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLabel.text = allQuestions.list.first?.questionText
        
    }
    
    
    @IBAction func answerButtonTapped(_ sender: UIButton) {
        
        if sender.tag == 1 {
            print(true)
        } else if sender.tag == 2 {
            print(false)
        } else {
            print("Error")
        }
        
    }
    
    
    
    

}

