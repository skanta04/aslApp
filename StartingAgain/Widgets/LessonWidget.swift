//
//  LessonWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct LessonWidget: View {
    @Binding var lesson: Lesson
    @Binding var gameState: GameState
    let onTap: () -> Void // Closure to handle tapping the lesson widget
    
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
                Button(action: {
                    onTap()
                    gameState = GameState.demoView
                    updateTime()
                }, label: {
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
                .buttonStyle(PlainButtonStyle())
                /*
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
                    })*/
                
            }
            .padding(.leading, 10)
            .padding([.top, .bottom], 20)
            .background(Color.lightPurple)
            .cornerRadius(10)
        }
    func updateTime() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        let now = Date()
        
        // Convert the current date to a string
        let startTimeString = dateFormatter.string(from: now)
        
        // Assign the string to lesson.startTime
        lesson.startTime = startTimeString
    }


}


