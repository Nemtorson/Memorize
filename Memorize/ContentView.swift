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
    @State var isFaceUp = false //@State creates a pointer
    // var isFaceUp: Bool = false
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 4)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

