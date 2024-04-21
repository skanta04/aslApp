//
//  ContentView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    @State var correct: String = "One"
    @State var isCorrect: Bool = false
    
    var body: some View {
        FrameView(image: model.frame, correct: $correct, isCorrect: $isCorrect)
            .ignoresSafeArea()
            .onChange(of: model.frame) { frame in
                if let frame = frame {
                    let detectedLetter = model.performHandPoseDetection(on: frame)
                    isCorrect = detectedLetter == correct
                    if (isCorrect){
                        print("This is correct")
                    }
                }
            }
            .onAppear {
                model.checkPermission()
            }
    }
}


#Preview {
    ContentView()
}
