//
//  Brain.swift
//  QuizApp
//
//  Created by Project X on 2/5/20.
//  Copyright © 2020 ryangadhi.com. All rights reserved.
//

import Foundation

struct Brain{
    
    
    var score = 0
    var currentQuestionIndex = -1 // -1 so that we increment to 0 the first run
    var totalScore = 0
    
    let quiz = [
    Question(q: "A slug's blood is green.", a: "False"),
    Question(q: "Approximately one quarter of human bones are in the feet.", a: "False"),
    Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
    Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
    Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
    Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
    Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
    Question(q: "Google was originally called 'Backrub'.", a: "True"),
    Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
    Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
    Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
    Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")]
    

    
    mutating func getUpdatedScore(userAnswer:String) -> Int {
        
        let answerToCurrentQustion = quiz[currentQuestionIndex].answer
        print(answerToCurrentQustion)
        if userAnswer == answerToCurrentQustion {
          score += 1
        }
        
        return score
    }
    
    mutating func getNextQuestion() -> String{
       
        let lastQuestionNum = quiz.count
        currentQuestionIndex += 1 // goint to the next question
        if lastQuestionNum == currentQuestionIndex{
            currentQuestionIndex = 0
        }
        let nextQuestion = quiz[currentQuestionIndex].text
        
        return nextQuestion
        
    }
    
}
