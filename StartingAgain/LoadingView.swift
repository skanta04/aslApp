//
//  LoadingView.swift
//  StartingAgain
//
//  Created by Saishreeya Kantamsetty on 4/20/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color.maroon
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Loading lessons ...")
                    .foregroundColor(Color.leafgreen)
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
                ZStack {
                        Image("cloud")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 210)
                        Text("ASL is used by over 500,000 deaf and hard-of-hearing individuals in the United States alone.")
                            .frame(width: 200, height: 75)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 12))
                            .padding(.top, 20)
            
                    }
                    .padding(.leading, -160)
                ZStack {
                        Image("cloud")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 700, height: 210)
                        Text("In the United States, ASL is recognized as a legitimate language and is used in educational settings, government, and media.")
                            .frame(width: 200, height: 75)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 12))
                            .padding(.top, 15)

            
                    }
                    .padding(.trailing, -160)
                Image("leaf2")
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    LoadingView()
}
