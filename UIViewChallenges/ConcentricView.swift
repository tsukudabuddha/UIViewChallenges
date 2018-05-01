//
//  ConcentricView.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class ConcentricView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let insetValue: CGFloat = 20
        var count: CGFloat = 10.0
        var saturation: CGFloat = 1.0
        let opacityDelta = saturation / count
        
        var prevFrame  = frame
        while count > 0 {
            let view = UIView(frame: prevFrame.insetBy(dx: insetValue, dy: insetValue))
            prevFrame = view.frame
            view.backgroundColor = UIColor(hue: 0.5, saturation: saturation, brightness: 1, alpha: 1)
            saturation -= opacityDelta
            addSubview(view)
            count -= 1
        }
        layoutSubviews()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
