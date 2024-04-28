//
//  ContentView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI

struct ContentView: View {
    @State var letters: Lesson = lessonAlphabet
    @State var numbers: Lesson = lessonNumbers
    @State var gameState: GameState = .lessonOverview
    @State var selectedLesson: Lesson = lessonNumbers


    var body: some View {
        switch gameState{
            case .lessonOverview:
                LessonOverviewView(lessonNumbers: $numbers, lessonAlphabet: $letters, gameState: $gameState, selectedLesson: $selectedLesson)
            case .demoView:
                DemoView(lesson: $selectedLesson, gameState: $gameState)
            case .quizView:
                QuizView(lesson: $selectedLesson, gameState: $gameState)
            case .finishedView:
                FinishedView(lesson: $selectedLesson, gameState: $gameState)
            case .cameraView:
                LetterLearningPage(lesson: $selectedLesson, gameState: $gameState)
            default:
                HomeView()
        }
    }
}


#Preview{
    ContentView()
}
