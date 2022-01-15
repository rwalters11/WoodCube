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
        
        // Create and position background
        let background = SKSpriteNode(imageNamed: "background2")

        //background.size = UIScreen.main.bounds.size
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        background.zPosition = -1
        //background.scale(to: UIScreen.main.bounds.size)
        
        // Add background child node to scene
        addChild(background)
        
        // Create and display shape preview panels
        let previewPanelLeft = BlockShapePreviewPanel(position: .Left)
        
        addChild(previewPanelLeft)
        
        
        let previewPanelCentre = BlockShapePreviewPanel(position: .Centre)
        
        addChild(previewPanelCentre)
        
        
        let previewPanelRight = BlockShapePreviewPanel(position: .Right)
        
        addChild(previewPanelRight)
        
        //
        
    }
    
    
    

    

    

    

    

}
