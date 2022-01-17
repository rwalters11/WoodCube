//
//  Common.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//
//  Code common to project

import Foundation
import SpriteKit

class Common {

    // Get the screen dimensions
    var displaySize: CGSize {
        
        get {
            return UIScreen.main.bounds.size
        }
        
    }
    
    // Get the screen width
    var displayWidth: CGFloat {
        
        get {
            return UIScreen.main.bounds.width
        }
    }
    
}
