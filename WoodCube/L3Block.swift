//
//  L3Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//

import Foundation
import SpriteKit

/*

Orientation 0

    | 0  |
    | 1• | 2 |

Orientation 90

| 1• | 0 |
| 2  |

Orientation 180

| 2 | 1•|
    | 0 |

Orientation 270

        | 2 |
    | 0 | 1• |

• marks the row/column indicator for the shape

Pivots about `1`

*/

class BlockL3: Blocks {
    
    // The number of blocks in the shape
    
    var numBlocks: Int = 3
    
    override var blockPattern: [Orientation : Array<(column: Int, row: Int)>] {
        return [
            Orientation.Zero:       [(0, 0), (1, 0), (0, 1)],
            Orientation.Ninety:     [(0, 0), (0, 1), (0, -1)],
            Orientation.OneEighty:  [(-1, 0), (0, 0), (0, -1)],
            Orientation.TwoSeventy: [(-1,0), (0, 0), (0, 1)]
        ]
    }
}
