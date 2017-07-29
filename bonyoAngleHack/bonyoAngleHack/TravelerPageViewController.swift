//
//  TravelerPageViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/30.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit

class TravelerPageViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myImage.layer.cornerRadius = 56
        myImage.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func LogoutAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
        self.present(vc!, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
