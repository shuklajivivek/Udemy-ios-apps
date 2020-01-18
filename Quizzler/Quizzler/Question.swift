//
//  Question.swift
//  Quizzler
//
//  Created by vivek shukla on 17/01/20.
//  Copyright © 2020 London App Brewery. All rights reserved.
//

import Foundation

class Question
{
    let questionText : String
    let questionAnswer : Bool
    
    init(text : String, correctAnswer : Bool) {
        questionText = text
        questionAnswer = correctAnswer
    }
}
