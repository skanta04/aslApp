//
//  InputingNameView.swift
//  StartingAgain
//
//  Created by Sruthy Mammen on 4/21/24.
//

import SwiftUI

extension Color {
    static let maroonn = Color(red: 62/255, green: 22/255, blue: 55/255)
    static let lightGreen = Color(red: 173/255, green: 209/255, blue: 88/255)
}

struct InputingNameView: View {
    @Binding var firstName: String
    
    var body: some View {
        ZStack {
            Color.maroonn.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 16) {
                Text("We're so excited to have you here!")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                    .bold()
                
                Text("Before we dive in, we'd love to get to know you a little better.")
                    .font(.headline)
                    .italic()
                    .padding()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .offset(y:-25)
                
                Spacer()
                
                VStack(spacing: 16) {
                    Text("Tell us your first name!")
                        .foregroundColor(Color.maroonn)
                        .padding(.bottom, 50)
                        .offset(y: 16)
                        .font(.system(size: 30))
                    
                    TextField("type here...", text: $firstName)
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .fill(Color.white.opacity(0.3))
                        )
                        .offset(y: -16)
                    
                }
                .padding()
                .frame(width:350,height:250)
                .background(Color.lightGreen)
                .cornerRadius(12)
                .offset(y: -110)

                
                Spacer()
                                
            }
            .padding() 
            
            Image("cuteleafy")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
                .offset(x: -10, y: 270)
        }
    }
}

struct InputingNameView_Previews: PreviewProvider {
    static var previews: some View {
        InputingNameView(firstName: .constant(""))
    }
}
