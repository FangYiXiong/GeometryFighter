//
//  GameViewController.swift
//  GeometryFighter
//
//  Created by fang on 16/4/26.
//  Copyright (c) 2016年 方一雄. All rights reserved.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {
    
    var scn视图: SCNView!
    var scn场景: SCNScene!
    var 摄像头节点: SCNNode!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        配置视图()
        配置场景()
        配置摄像头()
        生成几何体()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    func 配置视图() {
        scn视图 = self.view as! SCNView
        scn视图.showsStatistics = true
        scn视图.allowsCameraControl = true
        scn视图.autoenablesDefaultLighting = true
    }
    
    func 配置场景() {
        scn场景 = SCNScene()
        scn视图.scene = scn场景
        scn场景.background.contents = "GeometryFighter.scnassets/Textures/Background_Diffuse.png"
    }
    
    func 配置摄像头() {
        摄像头节点 = SCNNode()
        摄像头节点.camera = SCNCamera()
        摄像头节点.position = SCNVector3(x: 0, y: 0, z: 10)
        scn场景.rootNode.addChildNode(摄像头节点)
    }
    
    func 生成几何体() {
        var 几何体: SCNGeometry
        switch 形状.随机() {
        default:
            几何体 = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.0)
        }
        let 几何体节点 = SCNNode(geometry: 几何体)
        scn场景.rootNode.addChildNode(几何体节点)
    }
    
    
    
    
    
    
    
    
    
    
    
    

}
