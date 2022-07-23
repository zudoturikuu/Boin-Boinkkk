//
//  EmojiView.swift
//  Boin Boinkkk
//
//  Created by Wong Jun heng on 23/7/22.
//

import SwiftUI

struct EmojiView: View {
    
    var emojiSet: EmojiSet
    var body: some View {
        VStack {
            LazyVGrid (columns: [GridItem(.adaptive(minimum: 100))]) { ForEach(emojiSet.emojis, id: \.self) { emoji in
                
                Text(emoji)
                .font(.system(size: 100))
                }
                
            }
            
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emojiSet: EmojiSet (emojis: ["🍇", "🍎", "🐣"], name: "Fruits"))
    }
}
