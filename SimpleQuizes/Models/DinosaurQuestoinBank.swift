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
        
        list.append(DinosaurQuestionModel(questionText: "Did Theropods such as Allosaurus and Carnotaurus move on two legs or four?", answer: "Two"))
        
        list.append(DinosaurQuestionModel(questionText: "Apatosaurus is also widely known by what other name?", answer: "Brontosaurus"))
        
        list.append(DinosaurQuestionModel(questionText: "What weighed more, a fully grown Spinosaurus or Deinonychus?", answer: "Spinosaurus"))
        
        list.append(DinosaurQuestionModel(questionText: "Which came first, the Jurassic or Triassic Period?", answer: "The Triassic Period"))
        
        list.append(DinosaurQuestionModel(questionText: "What type of dinosaur features on the logo of the Toronto based NBA basketball team?", answer: "Raptor"))
        
        list.append(DinosaurQuestionModel(questionText: "What dinosaur themed book was turned into a blockbuster movie in 1993?", answer: "Jurassic Park"))
        
        list.append(DinosaurQuestionModel(questionText: "Did Sauropods such as Brachiosaurus and Diplodocus move on two legs or four?", answer: "Four"))
        
    }
    
}
