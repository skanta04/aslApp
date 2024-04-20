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
    
    var body: some View {
        if let image = image {
            Text("Camera")
            Image(image, scale: 1.0, orientation: .up, label: label)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
        } else {
            Color.red
        }
    }
}

#Preview {
    FrameView()
}

