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
            .frame(width: 150, height: 150)
            .padding([.leading, .trailing], 20) // Horizontal padding
            .padding([.top, .bottom], 50) // Vertical padding
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
                    .padding(20) // Padding for the border
            )
    }
}

struct LetterCardView_Previews: PreviewProvider {
    static var previews: some View {
        LetterCardView(imageName: "a") // Specify the image name here
    }
}
