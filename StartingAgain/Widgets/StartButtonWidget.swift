//
//  StartButtonWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct StartButtonWidget: View {
    var body: some View {
        Button(action: {
            // Action for the button
        }) {
            Text("Start")
                .fontWeight(.bold)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding(.horizontal, 100)
                .padding(.vertical, 10)
                .background(Color.green)
                .clipShape(Capsule())
        }
    }
}


#Preview {
    StartButtonWidget()
}
