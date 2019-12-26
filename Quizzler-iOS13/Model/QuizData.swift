//
//  QuizData.swift
//  Quizzler-iOS13
//
//  Created by Tosh  on 12/26/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizData {
    var questionNumber = 0
    
    let quiz = [
        Question(q: "Kenya's capital city is Mombasa", a: "False"),
        Question(q: "Daniel Moi is Kenya's second president", a: "True"),
        Question(q: "Obama was the first Kenyan president from the USA", a: "False"),
        Question(q: "Raila Odinga was Kenya's first prime minister", a: "False"),
        Question(q: "Mpesa is cool", a: "True"),
        Question(q: "KBC was once called Voice of Kenya", a: "True"),
        Question(q: "Mt. Kenya is Africa's highest Mountain", a: "True"),
        Question(q: "Busia is a town located both in Kenya and Uganda", a: "True"),
        Question(q: "We owe China a whole lot of money", a: "True"),
        Question(q: "Lake Victoria is the worlds largest Saline lake", a: "False"),
        Question(q: "Kenya is the coolest country in the world", a: "True"),
        Question(q: "Mombasa is an island", a: "True")

    ]
    
    func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        let progress = questionNumber / quiz.count
        
        return Float(progress)
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
           questionNumber = 0
        }
    }
}
