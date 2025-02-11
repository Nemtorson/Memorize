//
//  ContentView.swift
//  Memorize
//
//  Created by Maksymilian Michalski on 11/02/2025.
//

import SwiftUI

struct ContentView: View {
    let emojis: Array<String> = ["👻","🎃","🕷️","😈","👻","🎃","🕷️","😈","👻","🎃","🕷️","😈"]
    
    // let emojis: [String] means exactly the same
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.red)
    }
    
    
} //XD

#Preview {
    ContentView()
}


struct CardView: View {
    let content: String
    @State var isFaceUp = true //@State creates a pointer
    // var isFaceUp: Bool = false
    var body: some View {
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

