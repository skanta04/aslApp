//
//  StartingAgainApp.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

@main
struct StartingAgainApp: App {
    @State var lesson: Lesson = Lesson(toStudy: ["One", "Two", "Three"], correctStatements: ["You got it!"], number: 1, name: "Basic numbers", description: "Learning basic numbers in ASL", currentIndex: 0)
    var body: some Scene {
        WindowGroup {
            LetterLearningPage(lesson: $lesson)
        }
    }
}
