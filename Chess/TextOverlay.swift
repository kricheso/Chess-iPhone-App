//
//  TextOverlay.swift
//  Chess
//
//  Created by Kousei Richeson on 12/1/17.
//  Copyright © 2017 Kousei Richeson. All rights reserved.
//

import Foundation
import SceneKit
import SpriteKit

class TextOverlay: SKScene{
    var turnNode: SKLabelNode!
    var checkNode: SKLabelNode!
    
    override init(size: CGSize){
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scaleMode = .resizeFill
        
        turnNode = SKLabelNode(fontNamed: "Avenir-Bold")
        turnNode.text = "White's turn"
        
        turnNode.fontColor = .white
        turnNode.horizontalAlignmentMode = .left
        turnNode.verticalAlignmentMode = .bottom
        //turnNode.position = CGPoint(x: -size.width/2 + 20, y: size.height/2 - 40)
        turnNode.position = CGPoint(x: -size.width/4, y: -size.height/2 + 20)
        turnNode.name = "turn"
        addChild(turnNode)
        checkNode = SKLabelNode(fontNamed: "Avenir-Bold")
        checkNode.text = nil
        checkNode.fontColor = .white
        checkNode.horizontalAlignmentMode = .right
        checkNode.verticalAlignmentMode = .bottom
        //turnNode.position = CGPoint(x: -size.width/2 + 20, y: size.height/2 - 40)
        checkNode.position = CGPoint(x: -size.width/4, y: -size.height/2 + 20)
        checkNode.name = "check"
        addChild(checkNode)
    }
    func updateTurnOnScreen(whiteTurn: Bool){
        if whiteTurn{
            turnNode.text = "White's turn"
            turnNode.fontColor = .white
        }
        else{
            turnNode.text = "Black's turn"
            turnNode.fontColor = .black
        }
    }
    func display(text: String){
        if text == "nothing"{
            checkNode.text = nil
        }
        else{
            checkNode.text = text
        }
    }
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}
