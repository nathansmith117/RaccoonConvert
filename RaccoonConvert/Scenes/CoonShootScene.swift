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
    private let shooterZoneHeight: CGFloat = 120.0
    private var isShooting: Bool = false
    
    private var raccoonAddSpeed: TimeInterval = 500
    private var lastRaccoonAddedTime: TimeInterval = 0
    private var lastUpdateTime: TimeInterval = 0
    
    override func didMove(to view: SKView) -> Void
    {
        // Shoot node indeed.
        shootNode.position = CGPoint(x: (size.width / 2.0) - (shootNode.size.width / 2.0), y: shootNode.size.height)
        shootNode.zPosition = 2
        addChild(shootNode)
        
        // Shooter zone lol.
        let shooterZoneNode: SKSpriteNode = SKSpriteNode(color: UIColor.blue, size: CGSize(width: size.width * 2.0, height: shooterZoneHeight * 2.0))
        shooterZoneNode.zPosition = 0
        addChild(shooterZoneNode)
    }
    
    override func update(_ currentTime: TimeInterval)
    {
        super.update(currentTime)
        
        let deltaTime = calculateDeltaTime(from: currentTime)
        
        // Raccoon machine gun lol
        if isShooting && currentTime - lastRaccoonAddedTime >= raccoonAddSpeed
        {
            lastRaccoonAddedTime = currentTime
        }
    }
    
    private func calculateDeltaTime(from currentTime: TimeInterval) -> TimeInterval
    {
        if lastUpdateTime.isZero
        {
            lastUpdateTime = currentTime
        }
        
        let deltaTime = currentTime - lastUpdateTime
        lastUpdateTime = currentTime
        
        return deltaTime
    }
    
    private func moveShootNode(to location: CGPoint)
    {
        shootNode.position = location
        
        let shootWidth = shootNode.size.width / 2.0
        let shootHeight = shootNode.size.height / 2.0
        
        if shootNode.position.x < shootWidth
        {
            shootNode.position.x = shootWidth
        }
        if shootNode.position.y < shootHeight
        {
            shootNode.position.y = shootHeight
        }
        if shootNode.position.x > size.width - shootWidth
        {
            shootNode.position.x = size.width - shootWidth
        }
        if shootNode.position.y > shooterZoneHeight - shootHeight
        {
            shootNode.position.y = shooterZoneHeight - shootHeight
        }
    }
    
    override func touchesBegan(_ touches : Set<UITouch>, with event : UIEvent?) -> Void
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
        isShooting = true
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
        isShooting = false
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        guard let touch = touches.first
        else { return }
        
        moveShootNode(to: touch.location(in: self))
        isShooting = false
    }
}
