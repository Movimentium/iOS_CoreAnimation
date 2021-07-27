//
//  FireWorksVC.swift
//  iOS_CoreAnimation
//
//  Created by Miguel on 27/07/2021.
//

import UIKit

class FireWorksVC: UIViewController {
    
    let imgFireworks = UIImage(named: "firework")!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        addFireworkEmitter()
    }
    
    // MARK: - Particle emitter
    func addFireworkEmitter() {
        let pntCenter = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        let emitter = CAEmitterLayer()
        emitter.frame = view.bounds
        emitter.emitterPosition = pntCenter
        emitter.emitterSize = CGSize(width: 150, height: 150)
        emitter.emitterShape = .point                           // iRefz
        emitter.emitterCells = [fireworkCell(color: .red),
                                fireworkCell(color: .orange),
                                fireworkCell(color: .yellow)]
        view.layer.addSublayer(emitter)
    }
    
    // MARK: - CAEmitterCell
    func fireworkCell(color: UIColor) -> CAEmitterCell {
        let emitterCell = CAEmitterCell()
        emitterCell.contents = imgFireworks.cgImage
        emitterCell.birthRate = 2.0  // cells per second
        emitterCell.lifetime = 4
        emitterCell.yAcceleration = 100
        emitterCell.yAcceleration = 15
        emitterCell.velocity = 50
        emitterCell.velocityRange = 100    // velocity: -50...150 (50-100...50+100)
        emitterCell.emissionLongitude = -.pi/2.0
        emitterCell.emissionLatitude = .pi/2.0
        emitterCell.emissionRange = .pi/4.0
        emitterCell.scale = 0.75
        emitterCell.scaleRange = 0.1
        emitterCell.scaleSpeed = -0.1
        emitterCell.alphaRange = 0.8
        emitterCell.alphaSpeed = -0.1
        emitterCell.color = color.cgColor
        return emitterCell
    }
    

}
