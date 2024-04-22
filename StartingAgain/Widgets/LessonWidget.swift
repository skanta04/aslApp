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
        VStack(alignment: .center) {
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
                    destination: DemoView(lesson: $lesson),
                    label: {
                            VStack {
                                Text("Start")
                                    .fontWeight(.bold)
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .padding([.top, .bottom], 6)
                                    .padding([.leading, .trailing], 130)
                                    .background(Color("MainGreen"))
                                    .clipShape(Capsule())
                            }
                        })
        }
        .padding(.leading, 10)
        .padding([.top, .bottom], 20)
        .background(Color.lightPurple)
        .cornerRadius(10)
    }

}


