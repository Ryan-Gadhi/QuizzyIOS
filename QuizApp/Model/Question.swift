//
//  Question.swift
//  QuizApp
//
//  Created by Project X on 2/5/20.
//  Copyright © 2020 ryangadhi.com. All rights reserved.
//

import Foundation


struct Question{
    let text: String
    let answer: String
    
    init(q text: String,a answer:String){
        self.text = text
        self.answer = answer
    }
}
