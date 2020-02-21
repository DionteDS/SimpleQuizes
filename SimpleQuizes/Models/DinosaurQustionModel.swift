//
//  DinosaurQustionModel.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/21/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct DinosaurQuestionModel {
    var questionText: String
    var answer: String
    
    init(questionText: String, answer: String) {
        self.questionText = questionText
        self.answer = answer
    }
}
