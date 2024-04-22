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
                            }
                        }
                        Spacer()
                    }
                    .padding()
                    
                    
                    
                    if isCorrect == true {
                        if lesson.currentIndex < 2 {
                            NavigationLink(destination: DemoView(lesson: $lesson)) {
                                
                                Button ( action: {
                                    lesson.currentIndex += 1
                                }, label: {
                                    Text("Next Letter")
                                        .padding([.leading, .trailing], 130)
                                        .padding([.top, .bottom], 15)
                                        .background(Color.leafgreen)
                                        .cornerRadius(10)
                                        .padding(.bottom, 10)
                                        .foregroundColor(.black)
                                        .fontWeight(.semibold)
                                        .font(.system(size: 20))
                                })
                            }}
                        else {
                            NavigationLink(destination: FinishedView(lesson: $lesson), label: {
                                Text("Finish Lesson!")
                                    .padding([.leading, .trailing], 130)
                                    .padding([.top, .bottom], 15)
                                    .background(Color.leafgreen)
                                    .cornerRadius(10)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                .font(.system(size: 20))                                    })
                            
                            
                        }
                                    
                                }
                         else {
                        Text("Keep trying")
                                          .fontWeight(.bold)
                                          .font(.system(size: 20))
                                          .foregroundColor(.black)
                                          .padding([.leading, .trailing], 100)
                                          .padding([.top, .bottom], 8)
                                          .background(Color.gray)
                                          .cornerRadius(20)
                                          .offset(y: 10)
                                          .transition(.scale)
                    
                }
        }
        .padding()

    }
}


#Preview {
    LetterLearningPage(lesson: .constant(lessonNumbers))
}
