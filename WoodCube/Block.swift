//
//  Block.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//
//  Basic class for unit block

import Foundation
import SpriteKit

class Block: Hashable, CustomStringConvertible  {
    
    // Constants
    
    
    
    // Properties
    
    // x
    var column: Int
    
    // y
    var row: Int
    
    var sprite: SKSpriteNode?
    
    // Hashable value calc pre Swift 4.1
    //var hashValue: Int {
        
        //return self.column ^ self.row
    //}
    
    // Hashable value calc since Swift 4.2
    func hash(into hasher: inout Hasher) {
        hasher.combine(column)
        hasher.combine(row)
    }
    
    var description: String {
        
        return "[\(column), \(row)]"
    }
    
    init(column:Int, row:Int) {
        
        self.column = column
        
        self.row = row
        
    }
    
    static func == (lhs: Block, rhs: Block) -> Bool {
        
        return lhs.column == rhs.column && lhs.row == rhs.row
    }
    
}
