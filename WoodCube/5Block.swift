//
//  FiveBlock.swift
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
        | 4 |

    Orientations 90 and 270:

    | 0 | 1•| 2 | 3 | 4 |

• marks the row/column indicator for the shape

*/

// Hinges about the second block

class Block5: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 5
    
    override var blockRowColumnPositions: [Orientation: Array<(rowOffset: Int, columnOffset: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (0, -1), (0, -2), (0, -3), (0, -4)],
            Orientation.Ninety:     [(-1,0), (0, 0), (1, 0), (2, 0), (3, 0)],
            Orientation.OneEighty:  [(0, 0), (0, -1), (0, -2), (0, -3), (0, -4)],
            Orientation.TwoSeventy: [(-1,0), (0, 0), (1, 0), (2, 0), (3, 0)]
        ]
    }
}
