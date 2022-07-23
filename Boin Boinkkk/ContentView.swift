//
//  ContentView.swift
//  Boin Boinkkk
//
//  Created by Wong Jun heng on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojiSets = [
    EmojiSet (emojis: ["🐓", "🐥", "🐣", "🐤"], name: "Chickens"),
    
    EmojiSet (emojis: ["🍓", "🍉", "🍇"], name: "Fruits")
    
    ]
    var body: some View {
        NavigationView {
        List(emojiSets) { emojiSet in
         VStack(alignment: .leading) {
         Text(emojiSet.name)
         .font(.headline)
         Text(emojiSet.emojis.joined())
         }
         }
        } .navigationTitle("BIG RED CHICKEN PARTY")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
