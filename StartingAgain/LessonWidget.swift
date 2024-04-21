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
                    HStack {
                        Text("Lesson \(lesson.number)")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Text(lesson.name)
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                        Spacer()
                    }
                NavigationLink(
                    destination: LetterLearningPage(lesson: $lesson),
                    label: {
                        VStack(alignment: .center) {
                            Text("Start")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding([.leading, .trailing], 150)
                                .padding([.top, .bottom], 6)
                                .background(Color("MainGreen"))
                                .clipShape(Capsule())
                        }
                    }
                )
            }
            .padding(.leading, 10)
            .padding([.top, .bottom], 20)
            .background(Color.lightPurple)
            .cornerRadius(10)
        }
}
                    
