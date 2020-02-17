//
//  SpaceViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/17/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit

class SpaceViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    private var allQuestions = SpaceQuestionBank()
    private var questionNumber = 0
    private var score = 0
    private var userAnswer = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        nextQuestion()
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        sender.pulse()
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    // update the UI
    private func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "\(questionNumber + 1) / 13"
            
        progressBar.frame.size.width = (view.frame.size.width) / 13 * CGFloat(questionNumber + 1)
        
        answerTextField.text = ""
    }
    
    // Go to the next question
    private func nextQuestion() {
        if questionNumber <= 1 {
            questionLabel.text = allQuestions.list[questionNumber].textQuestion
            updateUI()
        } else if questionNumber == 2 {
            updateUI()
            questionLabel.text = ""
            let alert = UIAlertController(title: "Total Score: \(score)", message: "Good job. Would you like to restart?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (action) in
                self.restart()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        } else {
            print("Error")
        }
    }
    
    // Check answer
    private func checkAnswer() {
        
        let currentAnswer = allQuestions.list[questionNumber].answer
        
        if userAnswer == currentAnswer || userAnswer == currentAnswer.lowercased() {
            print("Correct")
            score += 1
        } else {
            print("Wrong!")
        }
    }
    
    // Restart the quiz and shuffle the questions
    private func restart() {
        
        let shuffleQuestion = allQuestions.list.shuffled()
        allQuestions.list = shuffleQuestion
        
        score = 0
        questionNumber = 0
        nextQuestion()
    }
    

}

// MARK: - UITextFieldDelegate Methods
extension SpaceViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        userAnswer = textField.text!
        
    }
    
}
