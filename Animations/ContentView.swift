//
//  ContentView.swift
//  Animations
//
//  Created by Apple on 26/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingRect = false
    
    
    var body: some View {
        VStack(spacing: 0){
            Button("Tap me"){
                withAnimation{
                    isShowingRect.toggle()
                }
            }
            
            if isShowingRect {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .padding(10)
                    .transition(.asymmetric(insertion: .slide, removal: .opacity))
            }
            
        }
    }
}

#Preview {
    ContentView()
}
