//
//  ScorePanel.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

// Panel to hold the current score

import Foundation
import SpriteKit

class ScorePanel: Panel {
    
    // Constants
    let scorePanel: CGSize = CGSize(width: 75, height: 75)
    
    init () {
        
        // Base class init
        super.init(panel: scorePanel)
        
        // Layer
        self.zPosition = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
