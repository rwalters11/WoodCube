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
    let pnlSize: CGFloat = 75
    let pnlCornerRadius: CGFloat = 5
    let pnlBorderLineWidth: CGFloat = 2
    let pnlBaseHeight: CGFloat = 20
    
    override init () {
        
        // Base class init
        super.init()
        
        // Layer
        self.zPosition = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
