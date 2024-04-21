//
//  LetterLearningPage.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LetterLearningPage: View {
    
    @StateObject private var model = FrameHandler()
    @Binding var lesson: Lesson
    @State private var isCorrect: Bool = false


    var body: some View {
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
                        .padding()
                    Text(lesson.description)
                        .foregroundColor(Color.white)
                        .font(.system(size: 20))
                        .padding()
                }
                // Add code for progress bar
                Text("Sign the following letter: \(lesson.toStudy[0])")
                    .foregroundColor(Color.white)
                CameraView(correct: $lesson.toStudy[lesson.currentIndex]) { isCorrect in
                    if isCorrect {
                        self.isCorrect = true
                        print("Correct letter detected!")
                    }
                }
                Spacer()
                Button(action: {
                    // Add action here
                }, label: {
                    Text("Next")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding()
                        .padding([.leading, .trailing], 140)
                        .background(Color("MainGreen"))
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 5, x: 2, y: 2)
                })
                .disabled(!isCorrect) // Disable button when isCorrect is false

            }
        }
    }
}


