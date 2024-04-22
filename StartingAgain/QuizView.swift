//
//  LetterQuizView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
/*

*/
//
import SwiftUI

struct QuizView: View {

    @State var selectedLetter: String? = nil
    @State var isNextButtonEnabled: Bool = false
    @Binding var lesson: Lesson
    @Binding var gameState: GameState

    
    var body: some View {
        

        VStack(alignment: .leading) {
            HStack {
                            Image("new-leaf")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 18, height: 18)
                                .padding(15)
                                .background(
                                    Circle()
                                        .foregroundColor(Color.mainGreen)
                                )
                            if lesson.name == "Basic Letters" {
                                Text("NEW LETTER!")
                                    .font(.callout)
                                    .foregroundColor(Color.black)
                            }
                            else {
                                Text("NEW NUMBER!")
                                    .font(.callout)
                                    .foregroundColor(Color.black)
                            }
                            
                        }
                            .padding(.leading, 10)
                            .padding(.bottom, 20)
            HStack {
                Text("Which one of these is \(lesson.toStudy[lesson.currentIndex].label)?")
                    .font(.system(size: 30))
                    .bold()
                    .padding(.leading, 10)
                Spacer()
            }
            
            if lesson.name == "Basic Numbers" {
                VStack(spacing: 10) { // Vertical stack for two rows of letter card buttons
                    HStack(spacing: 15)
                    { // Horizontal stack for first row (A and B)
                        Button(action: {
                            self.selectLetter("Three")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "Three")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "Three" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())

                        
                        Button(action: {
                            self.selectLetter("One")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "One")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "One" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding([.leading, .trailing], 15)
                    
                    HStack (spacing: 15) { // Horizontal stack for second row (C and D)
                        Button(action: {
                            self.selectLetter("Two")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label) {
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "Two")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "Two" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            self.selectLetter("Four")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "Four")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "Four" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding([.leading, .trailing], 15)


                }

            } else {
                VStack(spacing: 10) { // Vertical stack for two rows of letter card buttons
                    HStack(spacing: 15)
                    { // Horizontal stack for first row (A and B)
                        Button(action: {
                            self.selectLetter("C")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "C")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "C" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            self.selectLetter("B")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "B")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "B" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding([.leading, .trailing], 15)
                    
                    HStack (spacing: 15) { // Horizontal stack for second row (C and D)
                        Button(action: {
                            self.selectLetter("D")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label) {
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "D")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "D" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Button(action: {
                            self.selectLetter("A")
                            if (selectedLetter == lesson.toStudy[lesson.currentIndex].label){
                                isNextButtonEnabled = true
                            }
                        }) {
                            LetterCardView(imageName: "A")
                                .background(selectedLetter == lesson.toStudy[lesson.currentIndex].label && lesson.toStudy[lesson.currentIndex].label == "A" ? Color.mainGreen : Color.clear)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    .padding([.leading, .trailing], 15)
                    
                    
                }}
                
                VStack(alignment: .center) {
                    if isNextButtonEnabled {
                        Button(action: {
                            gameState = GameState.cameraView
                        }, label: {
                            HStack {
                                Spacer()
                                Text("Next")
                                    .padding([.leading, .trailing], 160)
                                    .padding([.top, .bottom], 15)
                                    .background(Color.leafgreen)
                                    .cornerRadius(10)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                    } else {
                        HStack {
                            Spacer()
                            Button(action: {}, label: {
                                Text("Keep Trying")
                                    .padding([.leading, .trailing], 130)
                                    .padding([.top, .bottom], 15)
                                    .background(Color.gray)
                                    .cornerRadius(10)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.black)
                                    .fontWeight(.semibold)
                                    .font(.system(size: 20))
                            })
                            .buttonStyle(PlainButtonStyle())
                            Spacer()
                        }
                    }
                }
                
            }

    }

    func selectLetter(_ letter: String) {
        selectedLetter = letter

    }
    
}


