//
//  ViewController.swift
//  UIViewChallenges
//
//  Created by Andrew Tsukuda on 5/1/18.
//  Copyright © 2018 Andrew Tsukuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view = PatternView(frame: view.frame)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

