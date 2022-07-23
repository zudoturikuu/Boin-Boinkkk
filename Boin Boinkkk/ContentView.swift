//
//  ContentView.swift
//  Boin Boinkkk
//
//  Created by Wong Jun heng on 23/7/22.
//

import SwiftUI

struct ContentView: View {
    
    var emojiSets = [
    EmojiSet (emojis: ["🐓", "🐥", "🐣", "🐤"], name: "Chickens")
    
    EmojiSet (emojis: ["🍓", "🍉", "🍇"], name: "Fruits")
    
    ]
    var body: some View {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
