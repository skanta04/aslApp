//
//  LessonOverviewView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LessonOverviewView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                VStack(alignment: .leading) {
                    Text("Current Lessons")
                        .fontWeight(.bold)
                        .foregroundColor(Color.maroon)
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .font(.system(size: 28))
                    VStack(alignment: .center, spacing: 30) {
                        LessonWidget(lesson: lessonNumbers)
                            .padding([.leading, .trailing], 15)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)
                        LessonWidget(lesson: lessonAlphabet)
                            .padding([.leading, .trailing], 15)
                            .shadow(color: .gray, radius: 5, x: 5, y: 5)

                        Spacer()
                    }
                }
            }
        }
}
    }



#Preview {
    LessonOverviewView()
}
