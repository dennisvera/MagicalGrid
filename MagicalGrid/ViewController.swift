//
//  ViewController.swift
//  MagicalGrid
//
//  Created by Flatiron School on 4/15/17.
//  Copyright © 2017 Dennisvera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numViewPerRow = 15
        let width = view.frame.width / CGFloat(numViewPerRow)
        
        for j in 0...30 {
            for i in 0...numViewPerRow {
                let cellView = UIView()
                cellView.backgroundColor = randomColor()
                cellView.frame = CGRect(x: CGFloat(i) * width, y: CGFloat(j) * width, width: width, height: width)
                cellView.layer.borderColor = UIColor.black.cgColor
                view.addSubview(cellView)
            }
        }
        
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
    }
    
    func handlePan(gesture: UIPanGestureRecognizer) {
        let location = gesture.location(in: view)
        
    }
    
    fileprivate func randomColor() -> UIColor {
        let red = CGFloat(drand48())
        let green = CGFloat(drand48())
        let blue = CGFloat(drand48())
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
}

