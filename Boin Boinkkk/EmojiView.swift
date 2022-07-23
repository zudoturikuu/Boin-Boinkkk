//
//  EmojiView.swift
//  Boin Boinkkk
//
//  Created by Wong Jun heng on 23/7/22.
//

import SwiftUI

struct EmojiView: View {
    
    var emojiSet: EmojiSet
    
    @State var selectedEmojis: [String] = []
    var body: some View {
        VStack {
            LazyVGrid (columns: [GridItem(.adaptive(minimum: 100))]) { ForEach(emojiSet.emojis, id: \.self) { emoji in
                Button {
                    selectedEmojis.append(emoji)
                } label: {
                    Text(emoji)
                    .font(.system(size: 100))
                }
                
                }
                
            }
            BouncyView(emojis: selectedEmojis) {
                surface in switch surface {
                case.emoji:
                    print("Crashed into another emoji")
                case .wall:
                print("Crashed into wall")
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
