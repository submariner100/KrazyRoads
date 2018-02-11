//
//  GameHUD.swift
//  Krazy Roads
//
//  Created by Macbook on 10/02/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import SpriteKit

class GameHUD: SKScene {

	var logoLabel: SKLabelNode?
	var tapToPlayLabel: SKLabelNode?
	var pointsLabel: SKLabelNode?
	
	init(with size: CGSize, menu: Bool) {
		super.init(size: size)
		if menu {
			addMenuLabels()
		} else {
			addPointsLabel()
		}
	}
	
	func addMenuLabels() {
		logoLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
		tapToPlayLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
		guard let logoLabel = logoLabel, let tapToPlayLabel = tapToPlayLabel else {
			return
		}
		logoLabel.text = "Krazy Roads"
		logoLabel.fontSize = 45.0
		logoLabel.position = CGPoint(x: frame.midX, y: frame.midY)
		addChild(logoLabel)
		
		tapToPlayLabel.text = "Tap to Play"
		tapToPlayLabel.fontSize = 35.0
		tapToPlayLabel.position = CGPoint(x: frame.midX, y: frame.midY - logoLabel.frame.size.height)
		addChild(tapToPlayLabel)
		
	}
	
	func addPointsLabel() {
		pointsLabel = SKLabelNode(fontNamed: "8BIT WONDER Nominal")
		guard let pointsLabel = pointsLabel else {
			return
		}
		pointsLabel.text = "0"
		pointsLabel.fontSize = 40.0
		pointsLabel.position = CGPoint(x: frame.minX + pointsLabel.frame.size.width, y: frame.maxY - pointsLabel.frame.size.height*2)
		addChild(pointsLabel)
	
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
