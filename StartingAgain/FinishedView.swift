//
//  FinishedView.swift
//  StartingAgain
//
//  Created by Saishreeya Kantamsetty on 4/21/24.
//
import SwiftUI

struct FinishedView: View {
    @Binding var lesson: Lesson
    @State private var tiltAngle: Double = 0
    let tiltAmount: Double = 20 // Adjust the amount of tilt as needed
    let animationDuration: Double = 2
    @Binding var gameState: GameState
    
    var body: some View {
            ZStack {
                VStack {
                    Image("leaf")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .rotationEffect(.degrees(tiltAngle))
                        .onAppear {
                            withAnimation(Animation.linear(duration: animationDuration).repeatForever(autoreverses: true)) {
                                tiltAngle = tiltAmount
                            }
                        }
                    
                    Text("Lesson Complete!")
                        .foregroundColor(Color.maroon)
                        .font(.custom("WendyOne-Regular", size: 40))
                        .fontWeight(.bold)
                    VStack(spacing: 20) {
                        HStack {
                            switch lesson.name {
                            case "Basic Numbers":
                                Image(systemName: "textformat.123")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color.blue)
                                    .padding(.trailing, 10)
                            default:
                                Image(systemName: "textformat.abc")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(Color.blue)
                                    .padding(.trailing, 10)
                            }
                            VStack(alignment: .leading) {
                                switch lesson.name {
                                case "Basic Numbers":
                                    Text("Total Numbers Learned")
                                default:
                                    Text("Total alphabets learned")
                                }
                                Text("3")
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                            }
                            .foregroundColor(.maroon)
                            Spacer()
                        }
                        .foregroundColor(.white)
                        .padding([.leading, .trailing])
                        .padding([.top, .bottom], 15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.maroon, lineWidth: 5)
                        )
                        HStack {
                            Image(systemName: "clock")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color.pink)
                                .padding(.trailing, 10)
                            VStack(alignment: .leading) {
                                Text("Total Time Spent")
                                Text(lesson.lessonLength ?? "Lesson length cannot be determined")
                                    .fontWeight(.bold)
                                    .font(.system(size: 25))
                            }
                            .foregroundColor(Color.maroon)
                            Spacer()
                        }
                        .foregroundColor(.white)
                        .padding([.leading, .trailing])
                        .padding([.top, .bottom], 15)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.maroon, lineWidth: 5)
                        )
                        Spacer()
                    }
                    
                    
                    Button(action: {
                        gameState = GameState.lessonOverview
                    }, label: {
                        Text("Continue to Keep Learning")
                            .padding([.leading, .trailing], 40)
                            .padding([.top, .bottom], 15)
                            .background(Color.leafgreen)
                            .cornerRadius(20)
                            .padding(.bottom, 10)
                            .foregroundColor(Color.maroon)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                    })
                    .buttonStyle(PlainButtonStyle())
                    /*NavigationLink(destination: LessonOverviewView()) {
                            Text("Continue to Keep Learning")
                                .padding([.leading, .trailing], 40)
                                .padding([.top, .bottom], 15)
                                .background(Color.leafgreen)
                                .cornerRadius(20)
                                .padding(.bottom, 10)
                                .foregroundColor(Color.maroon)
                                .fontWeight(.semibold)
                                .font(.system(size: 20))
                    }*/

                }
                .padding([.trailing, .leading], 20)
            }
    }
}
