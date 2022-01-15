//
//  4Block.swift
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
        | 2 |
        | 3 |

    Orientations 90 and 270:

    | 0 | 1•| 2 | 3 |

• marks the row/column indicator for the shape

*/

// Hinges about the second block

class Block4: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 4
    
    override var blockPattern: [Orientation : Array<(column: Int, row: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (0, -1), (0, -2), (0, -3)],
            Orientation.Ninety:     [(-1,0), (0, 0), (1, 0), (2, 0)],
            Orientation.OneEighty:  [(0, 0), (0, -1), (0, -2), (0, -3)],
            Orientation.TwoSeventy: [(-1,0), (0, 0), (1, 0), (2, 0)]
        ]
    }
    
}
