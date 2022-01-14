//
//  2Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*
    Orientations 0 and 180:

        | 0•|
        | 1 |

    Orientations 90 and 270:

    | 0•| 1 |

• marks the row/column indicator for the shape

*/

// Hinges about the first block

class Block2: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 2
    
    override var blockRowColumnPositions: [Orientation: Array<(rowOffset: Int, columnOffset: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (0, -1)],
            Orientation.Ninety:     [(0, 0), (1, 0)],
            Orientation.OneEighty:  [(0, 0), (0, -1)],
            Orientation.TwoSeventy: [(0, 0), (1, 0)]
        ]
    }
}
