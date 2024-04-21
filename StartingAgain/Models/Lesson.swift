//
//  Lesson.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import Foundation

struct Lesson: Codable {
    var toStudy: [StudyMaterial]
    var correctStatements: [String]
    var number: Int
    let name: String
    let description: String
    var currentIndex: Int
    
    mutating func increaseCurrentIndex() {
        self.currentIndex += 1
    }
}

let lessonAlphabet: Lesson = Lesson(toStudy: [one, two, three], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 2, name: "Basic Numbers", description: "Learning numbers 1, 2, and 3", currentIndex: 0)

let lessonNumbers: Lesson = Lesson(toStudy: [a, b, c], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 1, name: "Basic Letters", description: "Learning letters A, B, and C", currentIndex: 0)
