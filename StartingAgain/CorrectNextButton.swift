//
//  CorrectNextButton.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//
//import SwiftUI
//import AVFoundation
//
//struct CorrectNextButton: View {
//    var player: AVAudioPlayer?
//
//    init() {
//        guard let url = Bundle.main.url(forResource: "ding", withExtension: "mp3") else {
//            return
//        }
//        
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//        } catch {
//            print("Error initializing AVAudioPlayer: \(error)")
//        }
//    }
//    
//    var body: some View {
//        ZStack {
//            // Next Button
//            Button(action: {
//                withAnimation {
//                    showOverlay.toggle()
//                    playSound()
//                }
//            }) {
//                Text("Next")
//                    .fontWeight(.bold)
//                    .font(.system(size: 20))
//                    .foregroundColor(.white)
//                    .padding([.leading, .trailing], 150)
//                    .padding([.top, .bottom], 8)
//                    .background(Color.gray)
//                    .cornerRadius(6.0)
//            }
//
//            // Overlay
//            if showOverlay {
//                Text("Next")
//                                  .fontWeight(.bold)
//                                  .font(.system(size: 20))
//                                  .foregroundColor(.black)
//                                  .padding([.leading, .trailing], 150)
//                                  .padding([.top, .bottom], 8)
//                                  .background(Color("MainGreen"))
//                                  .cornerRadius(6.0)
//                                  .offset(y: 10)
//                                  .transition(.scale)
//            }
//        }
//    }
//
//    func playSound() {
//        player?.play()
//    }
//}
//
//struct CorrectNextButton_Previews: PreviewProvider {
//    static var previews: some View {
//        CorrectNextButton()
//    }
//}
