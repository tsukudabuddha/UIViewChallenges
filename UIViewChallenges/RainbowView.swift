//
//  RainbowView.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class RainbowView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let rows: CGFloat = 10
        var rowCounter: CGFloat = 0
        let dy = frame.height / rows
        var y: CGFloat = 0
        let width = frame.width
        let height = dy
        while rowCounter < rows {
            y += dy
            let view = UIView(frame: CGRect(x: 0, y: y, width: width, height: height))
            view.backgroundColor = randomColor()
            addSubview(view)
            rowCounter += 1
        }
        
    }
    
    func randomColor() -> UIColor {
        return UIColor(displayP3Red: CGFloat(drand48()), green: CGFloat(drand48()), blue: CGFloat(drand48()), alpha: CGFloat(drand48()))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
