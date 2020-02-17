//
//  SpaceQuestionModel.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/17/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct SpaceQuestionModel {
    
    var textQuestion: String
    var answer: String
    
    init(textQuestion: String, answer: String) {
        self.textQuestion = textQuestion
        self.answer = answer
    }
}
