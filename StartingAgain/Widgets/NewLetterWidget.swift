//
//  NewLetterWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI

struct NewLetterWidget: View {
    var body: some View {
        HStack {
            Image("new-leaf")
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
                .padding(8)
                .background(
                    Circle()
                        .foregroundColor(Color.mainGreen)
                )
            Text("NEW LETTER!")
                .font(.callout)
        }
    }
        
}

#Preview {
    NewLetterWidget()
}
