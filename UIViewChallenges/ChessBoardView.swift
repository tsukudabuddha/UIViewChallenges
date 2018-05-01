//
//  ChessBoardView.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class ChessBoardView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let x: CGFloat = 8
        let y = x
        let side = bounds.width / x
        
        var isBlack = true
        
        var xCount: CGFloat = 0
        while xCount < x {
            var yCount: CGFloat = 0
            while yCount < y {
                if isBlack {
                    addSubview(whiteView(frame: CGRect(x: xCount * side, y: yCount * side, width: side, height: side)))
                    isBlack = false
                } else {
                    addSubview(blackView(frame: CGRect(x: xCount * side, y: yCount * side, width: side, height: side)))
                    isBlack = true
                }
                
                yCount += 1
            }
            if isBlack {
                isBlack = false
            } else {
                isBlack = true
            }
            xCount += 1
        }
        layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

class whiteView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class blackView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
