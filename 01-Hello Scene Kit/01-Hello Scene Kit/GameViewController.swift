//
//  GameViewController.swift
//  01-Hello Scene Kit
//
//  Created by Jermy on 2017/8/1.
//  Copyright © 2017年 Jermy. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {

    var scnView : SCNView?
    var scene : SCNScene?
    var cameraNode : SCNNode?
    var geometryNode : SCNNode?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSceneView()
        setupScene()
        setupCamera()
        spawnShape()
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupSceneView() -> Void {
        
        scnView = (self.view as! SCNView)
        scnView?.allowsCameraControl = true
        scnView?.showsStatistics = true
        scnView?.autoenablesDefaultLighting = true
    }

    func setupScene() -> Void {
        
        scene = SCNScene()
        scnView?.scene = scene
        
        scene?.background.contents = "resources/GeometryFighter.scnassets/Textures/Background_Diffuse.png"
    }
    
    func setupCamera() -> Void {
        
        let camera = SCNCamera()
        
        cameraNode = SCNNode()
        cameraNode?.camera = camera
        cameraNode?.position = SCNVector3(0, 0, 10)
        
        scene?.rootNode.addChildNode(cameraNode!)
    }
    
    func spawnShape() -> Void {
        
        var geometry:SCNGeometry
        
        switch ShapeType.random() {
        case ShapeType.Box:
            
            geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0)
            
        default:
            geometry = SCNBox(width: 1, height: 1, length: 1, chamferRadius: 0)
        }
        
        geometryNode = SCNNode()
        geometryNode?.geometry = geometry
        scene?.rootNode.addChildNode(geometryNode!)
        
    }
}
