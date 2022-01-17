//
//  GameGrid.swift
//  WoodCube
//
//  Created by Richard Walters on 14/01/2022.
//
//  Main Game Grid

import Foundation
import SpriteKit

class GameGrid: Panel {
    
    //Constants
    let gameGridPanel: CGSize = CGSize(width: 75, height: 75)
    
    init () {
        
        // Base class init
        super.init(panel: gameGridPanel)
        
        // Layer
        self.zPosition = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
