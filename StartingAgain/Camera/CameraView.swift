
//  CameraView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI
import AVFAudio

struct CameraView: View {
    @StateObject private var model = FrameHandler()
    @Binding var correct: String
    @State var isCorrect: Bool = false
    var onCorrect: ((Bool) -> Void)?
    @State var soundPlayed: Bool = false
    @State private var player: AVAudioPlayer?
    @State private var playedOnce: Bool = false
    
    var body: some View {
        FrameView(image: model.frame, correct: $correct, isCorrect: $isCorrect)
            .ignoresSafeArea()
            .onChange(of: model.frame) { frame in
                if let frame = frame {
                    let detectedLetter = model.performHandPoseDetection(on: frame)
                    isCorrect = detectedLetter == correct
                    if isCorrect, let onCorrect = onCorrect {
                        onCorrect(true)
                        soundPlayed = true
                        
                    }
                }
            }
            .onChange(of: isCorrect, { oldValue, newValue in
                if newValue && !playedOnce {
                    playSuccessSound()
                    playedOnce = true
                }
            })
            .onAppear {
                model.checkPermission()
            }
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
