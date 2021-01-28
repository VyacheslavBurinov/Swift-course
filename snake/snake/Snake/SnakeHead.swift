//
//  SnakeHead.swift
//  snake
//
//  Created by Вячеслав Буринов on 23.01.2021.
//

import UIKit

class SnakeHead : SnakeBodyPart {
    
    override init(atPoint point: CGPoint){
        super.init(atPoint: point)
        
        
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
