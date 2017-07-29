//
//  BonyoViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/29.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit
//, UITableViewDelegate, UITableViewDataSource
class BonyoViewController: UIViewController {

    @IBOutlet weak var DetailTableView: UITableView!
    
    var info = ["大阪", "東京", "北海道"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
//    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//    
//    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        return cell
//    }

}
