//
//  FrameView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("frame")
    @Binding var correct: String
    @Binding var isCorrect: Bool
    static let correctLetter: String = "A"
    
    var body: some View {
        VStack {
            if let image = image {
                Image(image, scale: 1.0, orientation: .up, label: label)
                    .resizable()
                     .aspectRatio(contentMode: .fit) 
                     .frame(maxWidth: .infinity, maxHeight: .infinity)
                     .cornerRadius(10)
            } else {
                Color.gray
                    .frame(width: 350, height: 400)
                    .cornerRadius(10)

            }
        }
    }
}

#Preview {
    FrameView(correct: .constant(FrameView.correctLetter), isCorrect: .constant(true))
}

