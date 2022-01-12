//
//  GameScene.swift
//  WoodCube
//
//  Created by Richard Walters on 07/01/2022.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background1")

        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background.zPosition = -1
        
        
        addChild(background)
        
    }
    
    
    

    

    

    

    

}
