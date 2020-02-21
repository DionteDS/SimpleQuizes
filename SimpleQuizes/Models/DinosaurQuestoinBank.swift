//
//  DinosaurQuestoinBank.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/21/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct DinosaurQuestionBank {
    
    var list = [DinosaurQuestionModel]()
    
    init() {
        
        let firstQuestion = DinosaurQuestionModel(questionText: "How many horns did Triceratops have?", answer: "Three")
        list.append(firstQuestion)
        
        list.append(DinosaurQuestionModel(questionText: "Which came first, the Jurassic or Cretaceous Period?", answer: "The Jurassic Period"))
        
        list.append(DinosaurQuestionModel(questionText: "Was Diplodocus a carnivore or herbivore?", answer: "Herbivore"))
        
    }
    
}
