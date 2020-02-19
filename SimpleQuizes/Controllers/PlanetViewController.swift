//
//  PlanetViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/19/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit
import JGProgressHUD

class PlanetViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    var allQuestions = PlanetQuestionBank()
    var questionNumber = 0
    var score = 0
    var userAnswer = ""
    var hud = JGProgressHUD(style: .dark)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Planet Quiz"
        navigationItem.largeTitleDisplayMode = .always
        
    }
    
    
    
    @IBAction func checkAnswerDidTapped(_ sender: UIButton) {
        
        sender.pulse()
    }
    
    

}
