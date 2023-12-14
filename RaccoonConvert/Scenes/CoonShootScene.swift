//
//  CoonShotScene.swift
//  RaccoonConvert
//
//  Created by Smith, Nathanael on 12/14/23.
//

import SpriteKit

class CoonShootScene: SKScene
{
    private let shootNode: SKSpriteNode = SKSpriteNode(color: UIColor.white, size: CGSize(width: 20, height: 20))
    
    override func didMove(to view: SKView) -> Void
    {
        addChild(shootNode)
    }
    
    private func moveShootNode(to location: CGPoint)
    {
        if location.x >= 0 && location.y >= 0 && location.x <= size.width && location.y <= size.height
        {
            shootNode.position = location
        }
    }
    
    override func touchesBegan(_ touches : Set<UITouch>, with event : UIEvent?) -> Void
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
    }
}
