//
//  ViewController.swift
//  AnimationApp
//
//  Created by Руслан Штыбаев on 22.09.2021.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var SpringView: SpringView!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SpringButton(_ sender: Any) {
        let durEffect = Effect.getEffect()
        SpringView.animation = durEffect.animation
        SpringView.curve = durEffect.curve
        SpringView.force = durEffect.force
        SpringView.duration = durEffect.duration
        
        SpringView.animate()
        
        animationLabel.text = durEffect.animation
        curveLabel.text = durEffect.curve
        forceLabel.text = "\(round(durEffect.force * 1000) / 1000)"
        durationLabel.text = "\(round(durEffect.duration * 1000) / 1000)"
        
    }
    
}

