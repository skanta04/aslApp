//
//  LetterLearningPage.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LetterLearningPage: View {
    static let lesson = Lesson(toStudy: ["A", "B", "C"], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 1, name: "Basic Letters", description: "Learning numbers A, B, and C")
    
    @StateObject private var model = FrameHandler()
    @State var correct: String = "1"

    @Binding var lesson: Lesson
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
                CameraView(correct: $correct)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Next")
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                        .padding()
                        .padding([.leading, .trailing], 140)
                        .background(Color("MainGreen"))
                        .cornerRadius(10)
                        .shadow(color: .black, radius: 5, x: 2, y: 2)
                })
            }
        }
    }
}

#Preview {
    LetterLearningPage(lesson: .constant(LetterLearningPage.lesson))
}
