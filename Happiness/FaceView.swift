//
//  FaceView.swift
//  Happiness
//
//  Created by Matthew Allen Lin on 8/15/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var faceCenter: CGPoint {
        return convertPoint(center, fromView: superview)
    }
    
    var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2   //Radius, not diameter
    }
    
    override func drawRect(rect: CGRect)
    {
        let facePath = UIBezierPath(arcCenter: faceCenter,
            radius: faceRadius, startAngle: 0,
            endAngle: 2 * M_PI, clockwise: true)
    }
}
