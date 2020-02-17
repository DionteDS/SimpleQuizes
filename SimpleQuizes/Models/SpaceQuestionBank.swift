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
        
        list.append(SpaceQuestionModel(textQuestion: "What is the hottest planet in our solor system?", answer: "Venus"))
        
        list.append(SpaceQuestionModel(textQuestion: "What planet is famous for its big red spot on it?", answer: "Jupiter"))
        
        list.append(SpaceQuestionModel(textQuestion: "What planet is famous for the beautiful rings that surround it?", answer: "Saturn"))
        
        list.append(SpaceQuestionModel(textQuestion: "Is the sun a star or a planet?", answer: "Star"))
        
        list.append(SpaceQuestionModel(textQuestion: "Who was the first person to walk on the moon?", answer: "Neil Armstrong"))
        
        list.append(SpaceQuestionModel(textQuestion: "What planet is known as the red planet?", answer: "Mars"))
        
        list.append(SpaceQuestionModel(textQuestion: "What is the name of the force holding us to Earth?", answer: "Gravity"))
        
        list.append(SpaceQuestionModel(textQuestion: "What is the name of Saturn's largest moon?", answer: "Titan"))
        
        list.append(SpaceQuestionModel(textQuestion: "Earth is located in which galaxy?", answer: "The Milky Way Galaxy"))
        
        list.append(SpaceQuestionModel(textQuestion: "Olympus mons is a large volcanic mountain on which planet?", answer: "Mars"))
        
        list.append(SpaceQuestionModel(textQuestion: "Ganymede is a moon of which planet?", answer: "Jupiter"))
        
        list.append(SpaceQuestionModel(textQuestion: "", answer: ""))
        
    }
    
}
