//
//  ContentView.swift
//  Animations
//
//  Created by Apple on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        NavigationStack{
            Button("OK"){
                animationAmount += 0.1
                
            }
            .padding(50)
            .background(.red)
            .foregroundColor(.white)
            .clipShape(.circle)
            .scaleEffect(animationAmount)
            .blur(radius: (animationAmount - 1) * 3)
            .animation(.default, value: animationAmount)
        }
    }
}

#Preview {
    ContentView()
}
