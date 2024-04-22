//
//  LetterCardView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI


struct LetterCardView: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .padding([.top, .bottom], 10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
    }
}

struct LetterCardView_Previews: PreviewProvider {
    static var previews: some View {
        LetterCardView(imageName: "a") // Specify the image name here
    }
}
