//
//  FormViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/29.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var urlString = "http://www.123contactform.com/form-2862848/Book-A-Bonyos-Schedule"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = URL(string: self.urlString) {
            let request = URLRequest(url: url)
            self.webView.loadRequest(request)
        }
        
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

}
