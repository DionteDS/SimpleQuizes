//
//  SpaceQuestionBank.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/17/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct SpaceQuestionBank {
    
    var list = [SpaceQuestionModel]()
    
    init() {
        
        let firstQuestion = SpaceQuestionModel(textQuestion: "What is the closest planet to the Sun?", answer: "Mercury")
        
        list.append(firstQuestion)
        
        list.append(SpaceQuestionModel(textQuestion: "What is the name of the 2nd biggest planet in our solar system?", answer: "Saturn"))
        
    }
    
}
