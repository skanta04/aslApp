//
//  ContentView.swift
//  StartingAgain
//
//  Created by Ellie Kim on 4/20/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    var body: some View {
        FrameView(image: model.frame)
            .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
