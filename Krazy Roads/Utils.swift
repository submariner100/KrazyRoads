//  Utils.swift
//  Krazy Roads
//  Created by Macbook on 02/02/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//
import Foundation
import SceneKit

// struct to use the models in the app.
struct Models {
	
	private static let treeScene = SCNScene(named: "art.scnassets/Tree.scn")!
	static let tree = treeScene.rootNode.childNode(withName: "tree", recursively: true)!
	
	private static let hedgeScene = SCNScene(named: "art.scnassets/Hedge.scn")!
	static let hedge = hedgeScene.rootNode.childNode(withName: "hedge", recursively: true)!
	
	private static let fireTruckScene = SCNScene(named: "art.scnassets/Firetruck.scn")!
	static let fireTruck = fireTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
	
	private static let blueTruckScene = SCNScene(named: "art.scnassets/BlueTruck.scn")!
	static let blueTruck = blueTruckScene.rootNode.childNode(withName: "truck", recursively: true)!
	
	private static let carScene = SCNScene(named: "art.scnassets/PurpleCar.scn")!
	static let car = carScene.rootNode.childNode(withName: "car", recursively: true)!
	
//	private static let redCarScene = SCNScene(named: "art.scnassets/RedCar.scn")!
//	static let redCar = redCarScene.rootNode.childNode(withName: "car", recursively: true)!
}
let degreesPerRadians = Float(Double.pi/180)
let radiansPerDegrees = Float(180/Double.pi)

func toRadians(angle: Float) -> Float {
	return angle * degreesPerRadians
}

func toRadians(angle: CGFloat) -> CGFloat {
	return angle * CGFloat(degreesPerRadians)
}

func randomBool(odds: Int) -> Bool {
	let random = arc4random_uniform(UInt32(odds))
	if random < 1 {
		return true
	} else {
		return false
	}
}
