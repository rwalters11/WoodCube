//
//  BestScorePanel.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

//  Panel to hold the best score

import Foundation
import SpriteKit

class BestScorePanel: Panel {
    
    //Constants
    let bestScorePanel: CGSize = CGSize(width: 75, height: 75)
    
    init () {
        
        // Base class init
        super.init(panel: bestScorePanel)
        
        // Layer
        self.zPosition = 1
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
