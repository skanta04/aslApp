//
//  NextButtonWidget.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//
import SwiftUI

struct NextButtonWidget: View {
    var isEnabled: Bool
    
    var body: some View {
        Button(action: {
        }) {
            Text("Next")
                .padding([.leading, .trailing], 150)
                .foregroundColor(.white)
                .background(isEnabled ? Color.blue : Color.gray)
                .cornerRadius(10)
        }
        .disabled(!isEnabled)
    }
}

#Preview{
    NextButtonWidget(isEnabled: false)
}
