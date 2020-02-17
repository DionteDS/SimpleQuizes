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
    
    private var allQuestions = SpaceQuestionBank()
    private var questionNumber = 0
    private var score = 0
    private var userAnswer = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        questionLabel.text = allQuestions.list.first?.textQuestion
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        checkAnswer()
        
    }
    
    private func checkAnswer() {
        
        let currentAnswer = allQuestions.list[questionNumber].answer
        
        if userAnswer == currentAnswer || userAnswer == currentAnswer.lowercased() {
            print("Correct")
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
