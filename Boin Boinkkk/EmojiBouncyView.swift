//
//  EmojiBouncyView.swift
//  Boin Boinkkk
//
//  Created by hazh2025 on 23/7/22.
//

import UIKit

class EmojiBouncyView: UIView, UICollisionBehaviourDelegate {
 var animator: UIDynamicAnimator!
 var collisions: UICollisionBehavior!
 var dynamics: UIDynamicItemBehavior!

 init() {
 super.init(frame: .zero)
 animator = UIDynamicAnimator(referenceView: self)
 collisions = UICollisionBehavior(items: [])
 collisions.translatesReferenceBoundsIntoBoundary = true
 collisions.collisionDelegate = self
 animator.addBehavior(collisions)

 dynamics = UIDynamicItemBehavior(items: [])
 dynamics.elasticity = 0.9
 dynamics.resistance = 0.05
 dynamics.friction = 0
 animator.addBehavior(dynamics)
 }

 required init?(coder: NSCoder) {
 fatalError("init(coder:) has not been implemented")
 }
}
