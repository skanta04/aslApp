//
//  LetterLearningPage.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LetterLearningPage: View {
    static var lessonPreview: Lesson = Lesson(toStudy: ["1", "2", "3"], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 2, name: "Basic Numbers", description: "Learning numbers 1, 2, and 3", currentIndex: 0)
    
    @StateObject private var model = FrameHandler()
    @Binding var lesson: Lesson
    @State private var isCorrect: Bool = true


    var body: some View {
        NavigationView {
            ZStack {
                Color("MainPurple")
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Lesson \(lesson.number)")
                            .foregroundColor(Color("MainPurple"))
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .cornerRadius(10)
                        Text(lesson.description)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20))
                    }
                    .padding([.top, .bottom], 14)
                    .padding(.leading, 20)
                    .padding(.trailing, 80)
                    .background(Color.mainGreen)
                    .cornerRadius(10)
                    
                    
                    Text("Sign the following letter: \(lesson.toStudy[lesson.currentIndex])")
                        .foregroundColor(Color.white)
                    CameraView(correct: $lesson.toStudy[lesson.currentIndex]) { isCorrect in
                        if isCorrect {
                            self.isCorrect = true
                            print("Correct letter detected!")
                        }
                    }
//                    NavigationLink(destination: LetterLearningPage(lesson: $lesson)) {
                        Button(action: {
                            lesson.increaseCurrentIndex()
                        }) {
                            VStack(alignment: .center) {
                                Text("Next")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .padding([.leading, .trailing], 150)
                                    .padding([.top, .bottom], 8)
                                    .background(Color("MainGreen"))
                                    .clipShape(Capsule())
                            }
//                        }
                    }

                }
            }
        }
    }
}

#Preview {
    LetterLearningPage(lesson: .constant(LetterLearningPage.lessonPreview))
}

