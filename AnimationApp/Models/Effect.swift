//
//  Effect.swift
//  AnimationApp
//
//  Created by Руслан Штыбаев on 23.09.2021.
//

import Foundation
import Spring

struct Effect {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
}

extension Effect {
   static func getEffect() -> Effect {
        
        let animation = Spring.AnimationPreset.allCases.randomElement()
        let curve = Spring.AnimationCurve.allCases.randomElement()
        let force = CGFloat.random(in: 0.1 ... 2)
        let duration = CGFloat.random(in: 0.5 ... 1.5)
        
        let durEffect = Effect(
            animation: animation?.rawValue ?? "",
            curve: curve?.rawValue ?? "",
            force: force,
            duration: duration)
        
        return durEffect
    }
    
}


