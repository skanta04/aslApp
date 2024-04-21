//
//  PracticeWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI

struct PracticeWidget: View {
    var body: some View {
        HStack {
            Image("practice-leaf")
                .resizable()
                .scaledToFit()
                .frame(width: 18, height: 18)
                .padding(8)
                .background(
                    Circle()
                        .foregroundColor(Color.maroon)
                )
            Text("LET'S PRACTICE!")
                .font(.callout)
        }
    }
}

#Preview {
    PracticeWidget()
}
