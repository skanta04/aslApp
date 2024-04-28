////
//  LetterLearningPage.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//


import AVFoundation
import SwiftUI

struct LetterLearningPage: View {

    @StateObject private var model = FrameHandler()
    @Binding var lesson: Lesson
    @State private var isCorrect: Bool = false
    @Binding var gameState: GameState
    @State private var player: AVAudioPlayer?
    @State var soundPlayedOnce: Bool = false
    

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack {
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
            }

            if isCorrect == true {
                if lesson.currentIndex < 2 {
                    Button(action: {
                        lesson.increaseCurrentIndex()
                        gameState = GameState.demoView
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Great! Next letter!")
                                .padding([.leading, .trailing], 80)
                                .padding([.top, .bottom], 15)
                                .background(Color.mainGreen)
                                .cornerRadius(20)
                                .padding(.bottom, 10)
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                            Spacer()
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                } else if lesson.currentIndex == 2 {
                    Button(action: {
                        gameState = GameState.finishedView
                        lesson.endTime = Date()
                    }, label: {
                        HStack {
                            Spacer()
                            Text("Finish Lesson!")
                                .padding([.leading, .trailing], 100)
                                .padding([.top, .bottom], 15)
                                .background(Color.mainGreen)
                                .cornerRadius(20)
                                .padding(.bottom, 10)
                                .foregroundColor(Color.white)
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                            Spacer()
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                }
            } else {
                HStack {
                    Spacer()
                    Text("Keep trying!")
                        .padding([.leading, .trailing], 100)
                        .padding([.top, .bottom], 15)
                        .background(Color.gray)
                        .cornerRadius(20)
                        .padding(.bottom, 10)
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 20))
                    Spacer()
                }

            }

        }
        .padding()



    }
    
    func playSuccessSound() {
        guard let url = Bundle.main.url(forResource: "success-1-6297", withExtension: "wav") else {
            print("Sound file not found")
            return
        }

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Error playing sound: \(error)")
        }
    }
}
