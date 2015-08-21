//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Matthew Allen Lin on 8/14/15.
//  Copyright (c) 2015 Matthew Allen Lin. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{
    
    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.dataSource = self
        }
    }
    
    var happiness: Int = 100  // 0 = very sad, 100 = ecstatic
    {
        didSet {
            happiness = min(max(happiness, 0), 100) //Limit happiness to be between 0 and 100
            println("Happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI(){
        faceView.setNeedsDisplay()  //Redraws automatically for you
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50)/50
    }
}
