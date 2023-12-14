//
//  CoonShotScene.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/14/23.
//

import SpriteKit

class CoonShootScene: SKScene
{
    private let shootNode: SKSpriteNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100, height: 100))
    
    override func didMove(to view: SKView) -> Void
    {
        addChild(shootNode)
    }
}
