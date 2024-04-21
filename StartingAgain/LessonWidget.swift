//
//  LessonWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LessonWidget: View {
    @State var lesson: Lesson
    var body: some View {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Lesson \(lesson.number)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Text(lesson.name)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                    }
                    NavigationLink(
                        destination: LetterLearningPage(lesson: $lesson),
                        label: {
                            Text("Start")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding([.leading, .trailing], 20)
                                .padding([.top, .bottom], 10)
                                .background(Color("MainGreen"))
                                .clipShape(Capsule())
                        }
                    )
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color("LightPurple"))
                        .padding()
                        .frame(width: 380, height: 150)
                        .shadow(color: .black, radius: 5, x: 0, y: 5)
                )
        }
}




#Preview {
    LessonWidget(lesson: Lesson(toStudy: ["A", "B", "C"], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 1, name: "Basic Letters", description: "Learning numbers A, B, and C", currentIndex: 0))
}
