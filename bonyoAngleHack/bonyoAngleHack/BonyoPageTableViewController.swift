//
//  BonyoPageTableViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/30.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit

class BonyoPageTableViewController: UITableViewController {
        
    @IBOutlet weak var imageHead: UIImageView!
    @IBOutlet weak var myTableViewCell: UITableViewCell!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        imageHead.layer.cornerRadius = 56
        imageHead.layer.masksToBounds = true
        NotificationCenter.default.addObserver(self, selector: #selector(BonyoPageTableViewController.toGreen(notification:)), name: NSNotification.Name("TO_Green"), object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    @IBAction func Logout(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
        self.present(vc!, animated: true, completion: nil)
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            myTableViewCell.backgroundView?.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 153/255, alpha: 0.7)
        }
    }
    
    func toGreen(notification: NSNotification) {
            //myTableViewCell.backgroundView?.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 153/255, alpha: 0.7)
            myTableViewCell.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 153/255, alpha: 0.7)
            myLabel.text = "status: Handled"
            print("toGreen")
    }
    
    @IBAction func unwindToHomeScreen(segue:UIStoryboardSegue) {
        
    }
    // MARK: - Table view data source
    // 靜態cell 下面兩個func 不需
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
