//
//  LaneNode.swift
//  Krazy Roads
//
//  Created by Macbook on 01/02/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import SceneKit

enum LaneType {
	case grass, road
		
}

class LaneNode: SCNNode {
	
	let type: LaneType
	
	init(type: LaneType, width: CGFloat) {
		self.type = type
		super.init()
		
		switch type {
		case .grass:
			guard let texture = UIImage(named: "art.scnassets/grass.png") else {
				break
			}
			createLane(width: width, height: 0.2, image: texture)
			
		case .road:
			guard let texture = UIImage(named: "art.scnassets/asphalt.png") else {
				break
			}
			createLane(width: width, height: 0.05, image: texture)
		}
	}
	
	func createLane(width: CGFloat, height: CGFloat, image: UIImage) {
		let laneGeometry = SCNBox(width: width, height: height, length: 1.0, chamferRadius: 0.0)
		laneGeometry.firstMaterial?.diffuse.contents = image
		laneGeometry.firstMaterial?.diffuse.wrapT = .repeat
		laneGeometry.firstMaterial?.diffuse.wrapS = .repeat
		laneGeometry.firstMaterial?.diffuse.contentsTransform = SCNMatrix4MakeScale(Float(width), 1.0, 1.0)
		let laneNode = SCNNode(geometry: laneGeometry)
		addChildNode(laneNode)
		addElements(width, laneNode)
	}
	
	func addElements(_ width: CGFloat, _ laneNode: SCNNode) {
		for index in 0..<Int(width) {
			if type == .grass {
				if randomBool(odds: 7) {
					let vegetation = getVegetation()
					vegetation.position = SCNVector3(x: 10 - Float(index), y: 0, z: 0)
					laneNode.addChildNode(vegetation)
				}
			} else if type == .road {
				if randomBool(odds: 4) {
					let vehicle = getVehicle()
					vehicle.position = SCNVector3(x: 10 - Float(index), y: 0, z: 0)
					laneNode.addChildNode(vehicle)
				}
				
			}
		}
	}
	
	func getVegetation() -> SCNNode {
		let vegetation = randomBool(odds: 2) ? Models.tree.clone() : Models.hedge.clone()
		return vegetation
	}
	
	func getVehicle() -> SCNNode {
		let vehicle = randomBool(odds: 2) ? Models.fireTruck.clone() :
			Models.blueTruck.clone() ; Models.purpleCar.clone() ; Models.redCar.clone()
		return vehicle
		
		
	}
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
