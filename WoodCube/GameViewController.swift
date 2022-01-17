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
        
        // Instantiate the common library
        let common = Common()
        
        // Configure the view.
        
        let skView = view as! SKView
        
        skView.isMultipleTouchEnabled = false
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        
        
        
        // Create and configure the background scene.
        let scene = GameScene(size: common.displaySize)
        scene.scaleMode = .aspectFill
        
        // Present the scene.
        
        skView.presentScene(scene)
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func loadThemes() {
        
        
    }
}
