//
//  MainPanel.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

import Foundation
import SpriteKit

class MainPanel: Panel {
    
    // Constants
    let pnlSize: CGFloat = 75
    let pnlCornerRadius: CGFloat = 5
    let pnlBorderLineWidth: CGFloat = 2
    let pnlBaseHeight: CGFloat = 20
    
    override init() {
        
        // Base class init
        super.init()
        
        // Layer
        self.zPosition = 0
    }
    
    // XCode Storyboard required decoder init
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
