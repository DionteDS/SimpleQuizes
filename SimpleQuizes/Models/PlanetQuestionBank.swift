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
        let firstQuestion = PlanetQuestionModel(textQuestion: "What is the smallest planet in the Solar System?", answer: "Mercury")
        list.append(firstQuestion)
        
        list.append(PlanetQuestionModel(textQuestion: "What is the largest planet in the Solar System?", answer: "Jupiter"))
        
        list.append(PlanetQuestionModel(textQuestion: "What is the hottest planet in the Solar System", answer: "Venus"))
        
        list.append(PlanetQuestionModel(textQuestion: "The sixith planet from the Sun features an extensive ring system, what is the name of this planet?", answer: "Saturn"))
        
        list.append(PlanetQuestionModel(textQuestion: "The chemical element uranium was named after what planet?", answer: "Uranus"))
        
        list.append(PlanetQuestionModel(textQuestion: "What planet in the solar system is farthest from the Sun?", answer: "Neptune"))
        
        list.append(PlanetQuestionModel(textQuestion: "What is the second smallest planet in the soloar system?", answer: "Mars"))
        
        list.append(PlanetQuestionModel(textQuestion: "What is the brightest planet from the Sun?", answer: "Venus"))
        
        list.append(PlanetQuestionModel(textQuestion: "What is the third planet from the Sun?", answer: "Earth"))
        
        list.append(PlanetQuestionModel(textQuestion: "Phobos and Deimos are moons of what planet?", answer: "Mars"))
        
        list.append(PlanetQuestionModel(textQuestion: "Triton is the largest moon of what planet?", answer: "Neptune"))
        
        list.append(PlanetQuestionModel(textQuestion: "The Galilean moons orbit what planet?", answer: "Jupiter"))
        
        list.append(PlanetQuestionModel(textQuestion: "The moon Titan orbits what planet?", answer: "Saturn"))
        
    }
}
