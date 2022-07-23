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
func insert(emoji: String) {
 let labelWidth = 80.0

 let randX = Double.random(in: 0..<Double(bounds.width) - labelWidth)
 let randY = Double.random(in: 0..<Double(bounds.height) - labelWidth)

 let label = UILabel(frame: CGRect(x: randX, y: randY, width: labelWidth, height: labelWidth))

 label.text = emoji
 label.font = label.font.withSize(120)
 label.adjustsFontSizeToFitWidth = true

 label.backgroundColor = .systemGray5
 label.layer.cornerRadius = 16
 label.clipsToBounds = true
 label.textAlignment = .center
 self.addSubview(label)

 collisions.addItem(label)
 dynamics.addItem(label)

 let push = UIPushBehavior(items: [label], mode: .instantaneous)
 push.angle = CGFloat.random(in: 0 ..< .pi * 2)
 push.magnitude = CGFloat(3.0 + .random(in: 0 ..< 1))
 animator.addBehavior(push)

 UIView.animate(withDuration: 2, delay: 5) {
 label.alpha = 0
 } completion: { _ in
 label.removeFromSuperview()
 push.removeItem(label)
 self.dynamics.removeItem(label)
 self.collisions.removeItem(label)
 }
 }
}
func collisionBehavior(_ behavior: UICollisionBehavior,
 beganContactFor item1: UIDynamicItem,
 with item2: UIDynamicItem, at p: CGPoint) {

 }

 func collisionBehavior(_ behavior: UICollisionBehavior,
 endedContactFor item: UIDynamicItem,
 withBoundaryIdentifier identifier: NSCopying?) {

 }
}
