//
//  LessonOverviewView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LessonOverviewView: View {
    var body: some View {
        ZStack{
            Color("MainPurple")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 50) {
                Text("Current Lessons")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                LessonWidget(lesson: Lesson(toStudy: ["A", "B", "C"], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 1, name: "Basic Letters", description: "Learning letters A, B, and C", currentIndex: 0))
                LessonWidget(lesson: Lesson(toStudy: ["1", "2", "3"], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 2, name: "Basic Numbers", description: "Learning numbers 1, 2, and 3", currentIndex: 0))
                Spacer()
            }
        }
    }
}

#Preview {
    LessonOverviewView()
}
