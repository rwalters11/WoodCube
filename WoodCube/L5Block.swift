//
//  L5Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*

Orientation 0
 
    | 0  |
    | 1  |
    | 2• | 3 | 4 |

Orientation 90

| 2• | 1 | 0 |
| 3  |
| 4  |

Orientation 180

| 4 | 3 | 2•|
        | 1 |
        | 0 |

Orientation 270

        | 4 |
        | 3 |
| 0 | 1 | 2•|

• marks the row/column indicator for the shape

Pivots about `2`

*/

class BlockL5: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 5
    
    override var blockPattern: [Orientation : Array<(column: Int, row: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (0, 1), (0, 2), (1, 0), (2, 0)],
            Orientation.Ninety:     [(0, 0), (0, 1), (0, 2), (-1, 0), (-2, 0)],
            Orientation.OneEighty:  [(0, 0), (0, -1), (0, -2), (0, -3), (0, -4)],
            Orientation.TwoSeventy: [(-1,0), (0, 0), (1, 0), (2, 0), (3, 0)]
        ]
    }
}
