//
//  RedView.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class RedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let redView = UIView(frame: self.frame)
        redView.bounds = redView.frame.insetBy(dx: 20, dy: 20)
        redView.backgroundColor = UIColor.red
        redView.isHidden = false
        self.addSubview(redView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
