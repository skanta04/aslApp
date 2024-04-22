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
    @State private var isCorrect: Bool = false
    @Binding var gameState: GameState


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
                        Button(action: {
                            lesson.increaseCurrentIndex()
                            gameState = GameState.demoView
                        }, label: {
                            Text("Great! Next letter!")
                                .padding([.leading, .trailing], 40)
                                .padding([.top, .bottom], 15)
                                .background(Color.maroon)
                                .cornerRadius(20)
                                .padding(.bottom, 10)
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                            .font(.system(size: 20))
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                    else if lesson.currentIndex == 2{
                        Button(action: {
                            gameState = GameState.finishedView
                            if let lessonLengthString = calculateLessonLength(startTime: lesson.startTime) {
                                lesson.lessonLength = stringFromTimeInterval(lessonLengthString)
                            } else {
                                print("Lesson start time is not set.")
                            }
                        }, label: {
                            Text("Finish Lesson!")
                                .padding([.leading, .trailing], 40)
                                .padding([.top, .bottom], 15)
                                .background(Color.maroon)
                                .cornerRadius(20)
                                .padding(.bottom, 10)
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                            .font(.system(size: 20))
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                else {
                    Text("Keep trying!")
                        .padding([.leading, .trailing], 40)
                        .padding([.top, .bottom], 15)
                        .background(Color.maroon)
                        .cornerRadius(20)
                        .padding(.bottom, 10)
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                    .font(.system(size: 20))
                    
                }

        }
        .padding()

    }
    
    func calculateLessonLength(startTime: String) -> TimeInterval? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"

        guard let startTimeDate = dateFormatter.date(from: startTime) else {
            return nil // Return nil if the start time couldn't be parsed
        }

        let now = Date()
        let lessonLength = now.timeIntervalSince(startTimeDate)
        return lessonLength
    }


    func stringFromTimeInterval(_ interval: TimeInterval) -> String {
        let ti = NSInteger(interval)
        let seconds = ti % 60
        let minutes = (ti / 60) % 60
        let hours = (ti / 3600)
        return String(format: "%0.2d:%0.2d:%0.2d", hours, minutes, seconds)
    }
}

