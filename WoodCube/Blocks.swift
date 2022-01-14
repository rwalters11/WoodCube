//
//  Blocks.swift
//  WoodCube
//
//  Created by Richard Walters on 13/01/2022.
//
//  Base class for block shapes

import Foundation
import SpriteKit

// Setup Orientations

let NumOrientations: UInt32 = 4

enum Orientation: Int, CustomStringConvertible {
    
    case Zero = 0, Ninety, OneEighty, TwoSeventy

    var description: String {
     
         switch self {
             
             case .Zero:
             
                 return "0"
             
             case .Ninety:
             
                 return "90"
             
             case .OneEighty:
             
                 return "180"
             
             case .TwoSeventy:
             
                 return "270"
         }
    }

    // Function to return a random orientation
    static func random() -> Orientation {
     
        return Orientation(rawValue:Int(arc4random_uniform(NumOrientations)))!
    }
    
    // Function to return a rotated value
    static func rotate(orientation:Orientation, clockwise: Bool) -> Orientation {
     
         var rotated = orientation.rawValue + (clockwise ? 1 : -1)
         
         if rotated > Orientation.TwoSeventy.rawValue {
             
             rotated = Orientation.Zero.rawValue
             
         } else if rotated < 0 {
             
             rotated = Orientation.TwoSeventy.rawValue
         }
         
        return Orientation(rawValue:rotated)!
    }
    
}

// The number of total shape varieties

let NumShapeTypes: UInt32 = 8
    
// Blocks Class

class Blocks: Hashable, CustomStringConvertible {
    
    // The blocks comprising the shape
    
    var blocks = Array<Block>()
    
    // The current orientation of the shape
    
    var orientation: Orientation = .Zero
    
    // The column and row representing the shapes anchor point
    
    var apColumn, apRow: Int?
    
    // Protocol for CustomStringConvertible requires a description string return value
    var descRow, descColumn: String?
    
    // Return anchor point if set allowing for optional unset values
    var description: String {
        
        guard let descRow = apRow else {
            
            return "nil"
        }
        
        guard let descColumn = apColumn else {
            
            return "nil"
        }

        
        return "[\(descRow), \(descColumn)]"
    }
    
    init() {
        
        //initializeBlocks()
    }
    
    static func ==(lhs: Blocks, rhs: Blocks) -> Bool {
        
        return lhs.apRow == rhs.apRow && lhs.apColumn == rhs.apColumn
    }
    
    // Hashable value calc since Swift 4.2
    func hash(into hasher: inout Hasher) {
        hasher.combine(apColumn)
        hasher.combine(apRow)
    }
    
    // Required Overrides
    
    // Subclasses must override this property
    
    //  Block pattern holding offsets from the anchor point -> x,y = column, row
    var blockPattern: [Orientation: Array<(column: Int, row: Int)>] {
        
        return [:]
    }
    
    // Random block pattern generator
    final class func random() -> Blocks {
        
            switch Int(arc4random_uniform(NumShapeTypes)) {
   
            case 0:
                return Block1()
            case 1:
                return Block2()
            case 2:
                return Block3()
            case 3:
                return Block4()
            case 4:
                return Block5()
            case 5:
                return BlockL3()
            case 6:
                return BlockL5()
            case 7:
                return BlockCube4()
            default:
                return BlockCube9()
            }
        }
}

