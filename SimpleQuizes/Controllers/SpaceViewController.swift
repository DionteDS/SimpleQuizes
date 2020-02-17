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
        print(allQuestions.list.count)
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    private func updateUI() {
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "\(questionNumber + 1) / 13"
            
        progressBar.frame.size.width = (view.frame.size.width) / 13 * CGFloat(questionNumber + 1)
        
        answerTextField.text = ""
    }
    
    private func nextQuestion() {
        if questionNumber <= 1 {
            questionLabel.text = allQuestions.list[questionNumber].textQuestion
            print(questionNumber)
            updateUI()
        } else if questionNumber == 2 {
            print(questionNumber)
            updateUI()
            questionLabel.text = ""
            print("Done. Would you like to restart?")
        } else {
            print("Error")
        }
    }
    
    private func checkAnswer() {
        
        let currentAnswer = allQuestions.list[questionNumber].answer
        
        if userAnswer == currentAnswer || userAnswer == currentAnswer.lowercased() {
            print("Correct")
            score += 1
        } else {
            print("Wrong!")
        }
    }
    

}

extension SpaceViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        userAnswer = textField.text!
        
    }
    
}
