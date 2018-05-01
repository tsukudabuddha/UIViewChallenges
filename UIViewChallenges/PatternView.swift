//
//  PatternView.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class PatternView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.init(patternImage: UIImage(named: "pattern.png")!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
