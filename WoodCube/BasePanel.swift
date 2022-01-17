//
//  Panel.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

// Custom Base Class for Panels

// Enforce required functions
protocol PositionPanel: Panel {
    
    func positionPanel()
    
}

import Foundation
import SpriteKit


// Class Definition
class Panel: SKShapeNode, PositionPanel {
    
    // Constants
    
    let common = Common()
    
    // Function to return the position on screen to place the panel
    func positionPanel() {
        
    }
    
}
