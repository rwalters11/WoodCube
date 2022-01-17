//
//  Themes.swift
//  WoodCube
//
//  Created by Richard Walters on 16/01/2022.
//

import Foundation
import SpriteKit


// Setup Themes

let NumThemes: UInt32 = 1

struct Themes {
    
    var name: String
    var background: SKSpriteNode
    var texture: String
    
}

//  Class definition
class Theme: CustomStringConvertible {
    
    // Properties
    var theme: Themes
    
    // CustomStringConvertible protocol conformance
    var description: String {
            
        return self.theme.name
    }
    
    // Initialisation
    init(theme: Themes) {
        
        self.theme = theme
    }
    
    func loadDefault() {
        
        
    }
}
