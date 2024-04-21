//
//  CorrectNextButton.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//
import SwiftUI
import AVFoundation

struct CorrectNextButton: View {
    @State private var showOverlay = false
    var player: AVAudioPlayer?

    init() {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "mp3") else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            print("Error initializing AVAudioPlayer: \(error)")
        }
    }
    
    var body: some View {
        ZStack {
            // Next Button
            Button(action: {
                withAnimation {
                    showOverlay.toggle()
                    // Play the ding sound when the button is tapped
                    playSound()
                }
            }) {
                Text("Next")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding([.leading, .trailing], 150)
                    .padding([.top, .bottom], 8)
                    .background(Color.gray)
                    .cornerRadius(6.0)
            }

            // Overlay
            if showOverlay {
                ZStack {
                    Rectangle()
                        .fill(Color.gray.opacity(10)) // Corrected opacity to 0.8
                        .frame(width: 400, height: 100)
                        .cornerRadius(10.0)
                    
                    HStack(spacing: 10) {
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.green)
            
                        Text("Nice Job!")
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                    .padding(.bottom, 70)
                    .padding(.trailing, 250)
                    .offset(y: 5)
                }
                
                Text("Next")
                                  .fontWeight(.bold)
                                  .font(.system(size: 20))
                                  .foregroundColor(.black)
                                  .padding([.leading, .trailing], 150)
                                  .padding([.top, .bottom], 8)
                                  .background(Color("MainGreen"))
                                  .cornerRadius(6.0)
                                  .offset(y: 10)
                                  .transition(.scale)
            }
        }
    }

    func playSound() {
        player?.play()
    }
}

struct CorrectNextButton_Previews: PreviewProvider {
    static var previews: some View {
        CorrectNextButton()
    }
}
