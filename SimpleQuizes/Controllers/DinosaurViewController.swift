//
//  DinosaurViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/21/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit
import JGProgressHUD

class DinosaurViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var allQuestions = DinosaurQuestionBank()
    var questionNumber = 0
    var score = 0
    var userAnswer = ""
    var hud = JGProgressHUD(style: .dark)
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    @IBAction func checkAnswerBtn(_ sender: UIButton) {
        
        sender.pulse()
        
        checkAnswer()
        questionNumber += 1
    }
    
    
    private func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        
        
    }
    
    

}
