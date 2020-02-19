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
        
        nextQuestion()
    }
    
    
    //MARK: - Check Answer Button
    
    @IBAction func checkAnswerDidTapped(_ sender: UIButton) {
        
        sender.pulse()
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    // Go the next question
    func nextQuestion() {
        
        if questionNumber <= 4 {
            questionLabel.text = allQuestions.list[questionNumber].textQuestion
        }
        
    }
    
    
    // Check if the answer is right or wrong
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if userAnswer == correctAnswer || userAnswer == correctAnswer.lowercased() || userAnswer == correctAnswer.uppercased() {
            print("correct!")
        } else {
            print("Wrong!")
        }
        
    }

}

extension PlanetViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        userAnswer = textField.text!
    }
    
}
