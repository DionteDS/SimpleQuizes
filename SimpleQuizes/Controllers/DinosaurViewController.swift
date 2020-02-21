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
    @IBOutlet weak var progressBar: UIView!
    
    var allQuestions = DinosaurQuestionBank()
    var questionNumber = 0
    var score = 0
    var userAnswer = ""
    var hud = JGProgressHUD(style: .dark)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Dinosaur Quiz"
        navigationItem.largeTitleDisplayMode = .always

        nextQuestion()
    }
    
    // Check answer button
    @IBAction func checkAnswerBtn(_ sender: UIButton) {
        
        sender.pulse()
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    // Update the UI
    private func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "\(questionNumber + 1) / 10"
        
        progressBar.frame.size.width = (view.frame.size.width) / 11 * CGFloat(questionNumber + 1)
        
        answerTextField.text = ""
        
    }
    
    // Go on to the next question
    private func nextQuestion() {
        
        if questionNumber <= 9 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else if questionNumber == 10 {
            updateUI()
            
            questionLabel.text = ""
            
            let alert = UIAlertController(title: "Total Score: \(score)", message: "Good Job. Would you like to restart?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (action) in
                self.restart()
            }
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        } else {
            print("Error")
        }
        
    }
    
    
    // check user answer
    private func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if userAnswer == correctAnswer || userAnswer == correctAnswer.lowercased() || userAnswer == correctAnswer.uppercased() {
            
            hud.textLabel.text = "Correct!"
            hud.indicatorView = JGProgressHUDSuccessIndicatorView(image: UIImage(named: "check")!)
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 0.3)
            score += 1
        } else {
            hud.textLabel.text = "Wrong!"
            hud.indicatorView = JGProgressHUDErrorIndicatorView(image: UIImage(named: "error")!)
            hud.show(in: self.view)
            hud.dismiss(afterDelay: 0.3)
        }
        
    }
    
    // Restart the quiz and shuffle the questions
    private func restart() {
        
        let shuffleQuestions = allQuestions.list.shuffled()
        allQuestions.list = shuffleQuestions
        
        score = 0
        questionNumber = 0
        nextQuestion()
        
    }
    
}


//MARK: - UITextFieldDelegate Methods

extension DinosaurViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        userAnswer = textField.text!
    }
    
}
