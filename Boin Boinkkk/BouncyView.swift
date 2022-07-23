//
//  BouncyView.swift
//  Boin Boinkkk
//
//  Created by Wong Jun heng on 23/7/22.
//


import Foundation
import SwiftUI
import UIKit

struct BouncyView: UIViewRepresentable {
    
    @Binding var emojis: [String]
    
    var onCollide: ((CollideWhat) -> Void)
    
    func makeUIView(context: Context) -> EmojiBouncyView {
        return EmojiBouncyView(onCollide: onCollide)
    }
    
    func updateUIView(_ uiView: EmojiBouncyView, context: Context) {
        if let last = emojis.last {
            uiView.insert(emoji: last)
        }
    }
}

