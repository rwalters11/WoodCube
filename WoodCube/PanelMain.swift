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
    let mainPanel: CGSize = CGSize(width: 75, height: 75)

    
    init() {
        
        // Base class init
        super.init(panel: mainPanel)
        
        // Layer
        self.zPosition = 0
    }
    
    // XCode Storyboard required decoder init
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
