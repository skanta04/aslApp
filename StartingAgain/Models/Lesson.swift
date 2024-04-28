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
    var startTime: Date
    var endTime: Date
    
    mutating func increaseCurrentIndex() {
        self.currentIndex += 1
    }
    
    
    mutating func calculateLessonLength() -> String {
        let interval = endTime.timeIntervalSince(startTime)
        print("This is the start time: \(self.startTime), and this is the end time: \(self.endTime), and this is the interval: \(interval)")
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.hour, .minute, .second]
        formatter.unitsStyle = .full
        let result = formatter.string(from: interval)!
        return result
    }

}


let lessonAlphabet: Lesson = Lesson(toStudy: [a, b, c], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 1, name: "Basic Letters", description: "Learning letters A, B, and C", currentIndex: 0, startTime: Date(), endTime: Date())

let lessonNumbers: Lesson = Lesson(toStudy: [one, two, three], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 2, name: "Basic Numbers", description: "Learning numbers 1, 2, and 3", currentIndex: 0, startTime: Date(), endTime: Date())
