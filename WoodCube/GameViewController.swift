//
//  GameViewController.swift
//  WoodCube
//
//  Created by Richard Walters on 07/01/2022.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Configure the view.
        
        let skView = view as! SKView
        
        skView.isMultipleTouchEnabled = false
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        
        
        // Create and configure the scene.
        
        // Using fixed dimensions as it seems the only way to fill the device screen
        let scene = GameScene(size: CGSize(width: 320, height: 658))
        
        scene.scaleMode = .aspectFill

        
        
        // Present the scene.
        
        skView.presentScene(scene)
        
    }





    override var prefersStatusBarHidden: Bool {
        return true
    }
}
