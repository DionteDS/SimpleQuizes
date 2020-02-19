//
//  PlanetQuestionModel.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/19/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct PlanetQuestionModel {
    var textQuestion: String
    var answer: String
    
    init(textQuestion: String, answer: String) {
        self.textQuestion = textQuestion
        self.answer = answer
    }
}
