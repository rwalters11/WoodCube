//
//  1Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*
 
 | 0• |
 
 • marks the row/column indicator for the shape
 
 */

// The single shape will not rotate

class Block1: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 1
    
    override var blockRowColumnPositions: [Orientation : Array<(rowOffset: Int, columnOffset: Int)>] {
        
        return [
            
            Orientation.Zero: [(0,0)]
        ]
    }
}
