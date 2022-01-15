//
//  ShapePreviewPanel.swift
//  WoodCube
//
//  Created by Richard Walters on 14/01/2022.
//
//
//  Sprite Node to display shape preview panel.

import Foundation
import SpriteKit

// Enumerate preview panel positions
enum PanelPosition: Int, CustomStringConvertible {
    
    case Left = 0, Centre, Right

    var description: String {
     
         switch self {
             
             case .Left:
             
                 return "Left"
             
             case .Centre:
             
                 return "Centre"
             
             case .Right:
             
                 return "Right"
             
         }
    }
    
}

// Get the screen dimensions
let displaySize: CGRect  = UIScreen.main.bounds

// Class defintion
class BlockShapePreviewPanel: SKShapeNode {
    
    // Constants
    
    let pnlPosition: PanelPosition          // Left, Right or Centre
    let pnlSize: CGFloat = 75
    let pnlCornerRadius: CGFloat = 5
    let pnlBorderLineWidth: CGFloat = 2
    var pnlSeparation: CGFloat
    let pnlBaseHeight: CGFloat = 20
    
    init (position: PanelPosition) {
        
        self.pnlPosition = position
        self.pnlSeparation = (displaySize.width - (pnlSize * 3))/4
    
        // Base class init
        super.init()
        
        self.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: pnlSize, height: pnlSize), cornerRadius: pnlCornerRadius).cgPath
        self.fillColor = UIColor.red
        self.strokeColor = UIColor.blue
        self.lineWidth = pnlBorderLineWidth
        self.zPosition = 0
        
        positionPanel()
        
    }
    
    // XCode Storyboard required decoder init
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Function to return the position on screen to place the panel
    func positionPanel() {
        
        // Get the width of the ShapeNode
        let panelWidth: CGFloat = self.frame.width
        
        switch self.pnlPosition {
            
            case .Left:
                self.position = CGPoint( x: pnlSeparation, y: pnlBaseHeight)
            
            case .Centre:
                self.position = CGPoint (x: panelWidth + (pnlSeparation * 2), y: pnlBaseHeight)
                
            case .Right:
                self.position = CGPoint (x: (panelWidth * 2) + (pnlSeparation * 3), y: pnlBaseHeight)
        }
        
    }
    
}
