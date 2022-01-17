//
//  Panel.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

// Custom Base Class for Panels

// Enumerate panel properties in a single location using a struct
enum ePanel: Int {
    
    case main = 0,
    main,
    score,
    bestScore,
    
    

}

extension ePanel {
    
    
}

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
    
    var pnlSize: CGSize
    
    let pnlCornerRadius: CGFloat = 5
    let pnlBorderLineWidth: CGFloat = 2
    var pnlBaseHeight: CGFloat = 20
    
    init(panel: CGSize) {
        
        self.pnlSize = panel
        
        super.init()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Function to return the position on screen to place the panel
    func positionPanel() {
        
    }
    
}
