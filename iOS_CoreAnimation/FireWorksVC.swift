//
//  FireWorksVC.swift
//  iOS_CoreAnimation
//
//  Created by Miguel on 27/07/2021.
//

import UIKit

class FireWorksVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Particle emitter
    func addFireworkEmitter() {
        let emitter = CAEmitterLayer()
        emitter.frame = view.bounds
        emitter.emitterPosition = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        emitter.emitterSize = CGSize(width: 150, height: 150)
        emitter.emitterShape = .point
        view.layer.addSublayer(emitter)
    }
    


}
