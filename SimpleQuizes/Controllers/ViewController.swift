//
//  ViewController.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/14/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import UIKit
import JGProgressHUD


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    var allQuestions = ScienceQuestionBank()
    var pickedAnswer = false
    var questionNumber = 0
    var score = 0
    
    var hud = JGProgressHUD(style: .dark)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
        
        questionLabel.layer.cornerRadius = 5.0
        questionLabel.layer.masksToBounds = true
        questionLabel.layer.borderWidth = 2
        questionLabel.layer.borderColor = UIColor.black.cgColor
    }
    
    
    
    @IBAction func answerButtonTapped(_ sender: AnyObject) {
        
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        } else {
            print("Error")
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        
    }
    
    private func updateUI() {
        
        scoreLabel.text = "Score: \(score)"
        questionNumberLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width) / 13 * CGFloat(questionNumber + 1)
        
    }
    
    private func nextQuestion() {
        
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
        } else {
            let alert = UIAlertController(title: "Good Job!", message: "You have finished all questions. Would you like to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (action) in
                self.restart()
            }
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    // MARK: - Check answer
    
    private func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        // if user gets answer right display a green checkmark with the string correct!
        // else display an red X with the string wrong!
        if pickedAnswer == correctAnswer {
            hud.textLabel.text = "Correct"
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
    
    //MARK: - Restart the quiz
    
    // Restart the quiz and also shuffle the questions
    private func restart() {
        score = 0
        questionNumber = 0
        let shuffleQuestion = allQuestions.list.shuffled()
        allQuestions.list = shuffleQuestion
        nextQuestion()
    }
    

}

