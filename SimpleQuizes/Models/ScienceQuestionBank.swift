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
        
    }
    
}
