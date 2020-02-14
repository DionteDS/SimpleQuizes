//
//  ScienceQuestionBank.swift
//  SimpleQuizes
//
//  Created by Dionte Silmon on 2/14/20.
//  Copyright © 2020 Dionte Silmon. All rights reserved.
//

import Foundation

struct ScienceQuestionBank {
    
    var list = [ScienceQuestionModel]()
    
    init() {
        
        let firstQuesiton = ScienceQuestionModel(questionText: "Electrons are larger than molecules.", answer: false)
        
        list.append(firstQuesiton)
        
        list.append(ScienceQuestionModel(questionText: "The Atlantic Ocean is the biggest ocean on Earth.", answer: false))
        
        list.append(ScienceQuestionModel(questionText: "The chemical make up food often changes when you cook it.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Sharks are mammals.", answer: false))
        
        list.append(ScienceQuestionModel(questionText: "The human body has four lungs.", answer: false))
        
        list.append(ScienceQuestionModel(questionText: "Atoms are most stable when their outer shells are full.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Filtration separates mixtures based upon their particle size.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Venus is the closest planet to the Sun.", answer: false))
        
        list.append(ScienceQuestionModel(questionText: "Conductors have low resistance.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Molecules can have atoms from more than one chemical element.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Water is an example of a chemical element.", answer: false))
        
        list.append(ScienceQuestionModel(questionText: "The study of plants is known as botany.", answer: true))
        
        list.append(ScienceQuestionModel(questionText: "Mount Kilimanjaro is the tallest mountain in the world.", answer: false))
        
    }
    
}
