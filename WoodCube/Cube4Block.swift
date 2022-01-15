//
//  Cube4Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*
 
 | 0  | 1 |
 | 2• | 3 |
 
 • marks the row/column indicator for the shape
 
 */

// The cube4 shape will not rotate

class BlockCube4: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 4
    // 
    override var blockPattern: [Orientation : Array<(column: Int, row: Int)>] {
        
        return [
            
            Orientation.Zero: [(0,0), (1,0), (0,1), (1,1)]
        ]
    }
}
