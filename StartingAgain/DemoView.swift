//
//  DemoView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/21/24.
//

import SwiftUI

struct DemoView: View {
    static var a: StudyMaterial = StudyMaterial(label: "A", learningDescription: "The letter A in ASL is signed by forming a closed fist and extending your thumb outwards from your fingers.", image: "A")
    @Binding var demo: StudyMaterial
    var body: some View {
        VStack(alignment: .leading) {
            NewLetterWidget()
                .padding(.leading, 30)
                .padding(.bottom, 20)
            VStack {
                Image(demo.image)
                    .resizable()
                    .scaledToFit()
                Text(demo.label)
                    .foregroundColor(Color.maroon)
                    .fontWeight(.bold)
                    .font(.system(size: 50))
                Text(demo.learningDescription)
                    .font(.system(size: 16))
            }
            .padding(20)
            .background() {
                Color(uiColor: .systemBackground)
                    .cornerRadius(10)
                    .shadow(color: Color.gray, radius: 5, x: 5, y: 5)
            }
            .padding([.leading, .trailing, .bottom], 30)
            
        }
    }

}

#Preview {
    DemoView(demo: .constant(a))
}
