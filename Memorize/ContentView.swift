//
//  ContentView.swift
//  Memorize
//
//  Created by Maksymilian Michalski on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.blue)
        .imageScale(.small)
        .padding()
    }
} //XD

#Preview {
    ContentView()
}


struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 4)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}

