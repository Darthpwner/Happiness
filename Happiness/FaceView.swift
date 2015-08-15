//
//  FaceView.swift
//  Happiness
//
//  Created by Matthew Allen Lin on 8/15/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var lineWidth: CGFloat = 3 { didSet {setNeedsDisplay() } }
    var color: UIColor = UIColor.blueColor() { didSet {setNeedsDisplay() } }
    var scale: CGFloat = 0.90 { didSet {setNeedsDisplay() } }
    
    var faceCenter: CGPoint {
        return convertPoint(center, fromView: superview)
    }
    
    var faceRadius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2 * 0.90  //Radius, not diameter
    }
    
    private struct Scaling {
        static let FaceRadiusToEyeRadiusRatio: CGFloat = 10
        static let FaceRadiusToEyeOffsetRatio: CGFloat = 3
        static let FaceRadiusToEyeSeparationRatio: CGFloat = 1.5
        static let FaceRadiusToMouthWidthRatio: CGFloat = 1
        static let FaceRadiusToMouthHeightRatio: CGFloat = 3
        static let FaceRadiusToMouthOffsetRatio: CGFloat = 3
    }
    
    private enum Eye { case Left, Right }
    
    private func bezierPathForEye(whichEye: Eye) -> UIBezierPath
    {
        let eyeRadius = faceRadius / Scaling.FaceRadiusToEyeRadiusRatio
        //...
    }
    
    override func drawRect(rect: CGRect)
    {
        let facePath = UIBezierPath(arcCenter: faceCenter,
            radius: faceRadius, startAngle: 0,
            endAngle: CGFloat(2 * M_PI), clockwise: true)
        facePath.lineWidth = lineWidth
        color.set()
        facePath.stroke()
    }
}
