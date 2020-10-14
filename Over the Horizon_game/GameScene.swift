//
//  GameScene.swift
//  Over the Horizon_game
//
//  Created by DDDD on 12/10/2020.
//

import SpriteKit

class GameScene: SKScene {
    
    var player: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        
        createPlayer()
        createSky()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    func createPlayer() {
        let playerTexture = SKTexture(imageNamed: "player-1")
        player = SKSpriteNode(texture: playerTexture)
        player.zPosition = 10
        player.position = CGPoint(x: frame.width / 6, y: frame.height * 0.75)
        
        addChild(player)
        
        let frame2 = SKTexture(imageNamed: "player-2")
        let frame3 = SKTexture(imageNamed: "player-3")
        
        let animation = SKAction.animate(with: [playerTexture, frame2, frame3, frame2], timePerFrame: 0.01)
        let runForever = SKAction.repeatForever(animation)
        
        player.run(runForever)
    }
    
   func createSky() {
//        let topSky = SKSpriteNode(color: UIColor(hue: 0.66, saturation: 0.14, brightness: 0.97, alpha: 1))
    let topSky = SKSpriteNode(color: UIColor(hue: 0.55, saturation: 0.14, brightness: 0.97, alpha: 1), size: CGSize(width: frame.width, height: frame.height * 0.67))
    topSky.anchorPoint = CGPoint(x: 0.5, y: 1)
    
    let bottomSky = SKSpriteNode(color: UIColor(hue: 0.55, saturation: 0.16, brightness: 0.96, alpha: 1), size: CGSize(width: frame.width, height: frame.height * 0.33))
    bottomSky.anchorPoint = CGPoint(x: 0.5, y: 1)
    
    topSky.position = CGPoint(x: frame.midX, y: frame.height)
    bottomSky.position = CGPoint(x: frame.midX, y: bottomSky.frame.height)
    
    addChild(topSky)
    addChild(bottomSky)
    
    topSky.zPosition = -40
    bottomSky.zPosition = -40
    }
}
