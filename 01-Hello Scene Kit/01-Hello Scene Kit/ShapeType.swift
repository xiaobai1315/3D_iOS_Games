//
//  ShapeType.swift
//  01-Hello Scene Kit
//
//  Created by Jermy on 2017/8/1.
//  Copyright © 2017年 Jermy. All rights reserved.
//

import Foundation

public enum ShapeType:Int {
    
    case Box = 0
    case Sphere
    case Pyramid
    case Torus
    case Capsule
    case Cylinder
    case Cone
    case Tube
    
    static func random() -> ShapeType {
        
        let maxValue = Tube.rawValue
        let rand = arc4random_uniform(UInt32(maxValue + 1))
        return ShapeType(rawValue: Int(rand))!
    }
    
}
