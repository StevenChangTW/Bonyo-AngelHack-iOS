//
//  ViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/29.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var Traveler: UIButton!
    @IBOutlet weak var BonyoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Traveler.layer.cornerRadius = 10
        Traveler.layer.masksToBounds = true
        
        BonyoButton.layer.cornerRadius = 10
        BonyoButton.layer.masksToBounds = true
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        animated = true
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

