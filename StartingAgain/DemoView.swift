//
//  DemoView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI

struct DemoView: View {

    static var a: StudyMaterial = StudyMaterial(label: "A", learningDescription: "The letter A in ASL is signed by forming a closed fist and extending your thumb outwards from your fingers.", image: "A")
    @Binding var lesson: Lesson
    @Binding var gameState: GameState

    var body: some View {
            VStack(alignment: .leading) {
                HStack {
                                Image("new-leaf")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 18, height: 18)
                                    .padding(8)
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
                    .padding(.leading, 30)
                    .padding(.bottom, 20)
                HStack {
                    Spacer()
                    VStack {
                        Image(lesson.toStudy[lesson.currentIndex].image)
                            .resizable()
                            .scaledToFit()
                        Text(lesson.toStudy[lesson.currentIndex].label)
                            .foregroundColor(Color.maroon)
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                        Text(lesson.toStudy[lesson.currentIndex].learningDescription)
                            .font(.system(size: 16))
                    }
                    .padding(20)
                    .background() {
                        Color(uiColor: .systemBackground)
                            .cornerRadius(10)
                            .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
                    }
                    .padding([.leading, .trailing, .bottom], 30)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button(action: {
                        gameState = GameState.quizView
                    }, label: {
                        Text("Continue to Keep Learning")
                            .padding([.leading, .trailing], 40)
                            .padding([.top, .bottom], 15)
                            .background(Color.maroon)
                            .cornerRadius(20)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.white)
                            .fontWeight(.semibold)
                        .font(.system(size: 20))})
                    .buttonStyle(PlainButtonStyle())
                    Spacer()

                    }
                }
                .onAppear(perform: {
                    print("This view occurred")
                })
            }
            
        }


