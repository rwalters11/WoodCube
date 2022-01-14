//
//  Cube9Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*
 
 | 0  | 1 | 2 |
 | 3  | 4 | 5 |
 ! 6• | 7 | 8 |
 
 • marks the row/column indicator for the shape
 
 */

// The cube9 shape will not rotate

class BlockCube9: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 9
    
    override var blockRowColumnPositions: [Orientation : Array<(rowOffset: Int, columnOffset: Int)>] {
        
        return [
            
            Orientation.Zero: [(0,0), (1,0), (2,0), (0,1), (1,1), (2,1), (0,2), (1,2), (2,2)]
            
        ]
    }
}
