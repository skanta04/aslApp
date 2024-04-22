//
//  LetterQuizView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//
import SwiftUI

struct QuizView: View {
    static var lessonPreview: Lesson = Lesson(toStudy: [a, b, c], correctStatements: ["You got this!", "You rock!", "Let's go!"], number: 2, name: "Basic Numbers", description: "Learning numbers 1, 2, and 3", currentIndex: 0)

    @State var selectedLetter: String? = nil
    @State var isNextButtonEnabled: Bool = false
    @Binding var lesson: Lesson

    
    var body: some View {
            VStack {
                NewLetterWidget()
                Text("Which one of these is \(lesson.toStudy[lesson.currentIndex].label)?")
                    .font(.system(size: 20))
                    .bold()
                    .offset(x:-30)
                
                
                VStack(spacing: 20) { // Vertical stack for two rows of letter card buttons
                    HStack(spacing: 3) { // Horizontal stack for first row (A and B)
                        Button(action: {
                            self.selectLetter("A")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "a")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "A" ? Color.mainGreen : Color.clear)
                        }
                        
                        Button(action: {
                            self.selectLetter("B")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "b")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "B" ? Color.mainGreen : Color.clear)
                        }
                    }
                    
                    HStack(spacing: 3) { // Horizontal stack for second row (C and D)
                        Button(action: {
                            self.selectLetter("C")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "c")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "C" ? Color.mainGreen : Color.clear)
                        }
                        
                        Button(action: {
                            self.selectLetter("D")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "d")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "D" ? Color.mainGreen : Color.clear)
                        }
                    }
                }
                .padding(.top, 20)
                
                VStack(alignment: .center) {
                    if isNextButtonEnabled {
                        NavigationLink(destination: LetterLearningPage(lesson: $lesson)) {
                            Text("Next")
                                .padding([.leading, .trailing], 130)
                                .padding([.top, .bottom], 15)
                                .background(Color.leafgreen)
                                .cornerRadius(10)
                                .padding(.bottom, 10)
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                        }
                    } else {
                        Button(action: {}, label: {
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
                        })
                    }
                }

                        
        }

    }

    func selectLetter(_ letter: String) {
        selectedLetter = letter

    }
    
}


