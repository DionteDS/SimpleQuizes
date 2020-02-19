//
//  PlanetQuestionBank.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/19/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct PlanetQuestionBank {
    var list = [PlanetQuestionModel]()
    
    init() {
        let firstQuestion = PlanetQuestionModel(textQuestion: "What is the smallest planet in the Solor System?", answer: "Mercury")
        list.append(firstQuestion)
        
        list.append(PlanetQuestionModel(textQuestion: "What is the largest planet in the Solor System?", answer: "Jupiter"))
        
        list.append(PlanetQuestionModel(textQuestion: "What is the hottest planet in the Solor System", answer: "Venus"))
        
        list.append(PlanetQuestionModel(textQuestion: "The sixith planet from the Sun features an extensive ring system, what is the name of this planet?", answer: "Saturn"))
        
        list.append(PlanetQuestionModel(textQuestion: "The chemical element uranium was named after what planet?", answer: "Uranus"))
    }
}
