//
//  LetterLearningPage.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//


import SwiftUI

struct LetterLearningPage: View {
    
    @StateObject private var model = FrameHandler()
    @Binding var lesson: Lesson
    @State private var isCorrect: Bool = true


    var body: some View {
        NavigationView {
                VStack(alignment: .leading, spacing: 10) {
                    PracticeWidget()
                    Text("Try recreating \(lesson.toStudy[lesson.currentIndex].label) below!")
                        .foregroundColor(Color.black)
                        .font(.system(size: 25))
                    HStack {
                        Spacer()
                        CameraView(correct: $lesson.toStudy[lesson.currentIndex].label) { isCorrect in
                            if isCorrect {
                                self.isCorrect = true
                                print("Correct letter detected!")
                            }
                        }
                        Spacer()
                    }
                    .padding()
                
                }
        }
        .padding()

    }
}


#Preview {
    LetterLearningPage(lesson: .constant(lessonNumbers))
}
