//
//  HomeView.swift
//  StartingAgain
//
//  Created by Saishreeya Kantamsetty on 4/20/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.maroon
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image("leaf")
                        .resizable()
                        .scaledToFit()
                    Text("SignSprouts")
                        .font(.custom("WendyOne-Regular", size: 45))
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    Text("Bridging gaps, one gesture at a time!")
                        .fontWeight(.regular)
                        .font(.system(size: 20))
                    Spacer()
                    NavigationLink(destination: LoadingView()) {
                        Text("Get Started")
                            .padding([.leading, .trailing], 120)
                            .padding([.top, .bottom], 15)
                            .background(Color.leafgreen)
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            
                    }
                }
                .foregroundColor(.white)
                
            }
        }
   }
}

#Preview {
    HomeView()
}
