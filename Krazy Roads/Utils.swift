//
//  Utils.swift
//  Krazy Roads
//
//  Created by Macbook on 02/02/2018.
//  Copyright © 2018 Lodge Farm Apps. All rights reserved.
//

import Foundation
import SceneKit

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
