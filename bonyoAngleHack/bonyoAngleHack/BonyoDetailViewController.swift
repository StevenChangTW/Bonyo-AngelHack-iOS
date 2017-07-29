//
//  BonyoDetailViewController.swift
//  bonyoAngleHack
//
//  Created by mac on 2017/7/29.
//  Copyright © 2017年 bonyo.AngleHack.teama. All rights reserved.
//

import UIKit

class BonyoDetailViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    var urlString = "https://8b52cf4b.ngrok.io/trip/custom/show/1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let url = URL(string: self.urlString) {
            let request = URLRequest(url: url)
            self.webView.loadRequest(request)
        }
        
        self.webView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButton(_ sender: Any) {
        //dismiss(animated: true, completion: nil)
        NotificationCenter.default.post(name: NSNotification.Name("TO_Green"), object: nil)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "BonyoPlanning")
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

extension BonyoDetailViewController: UIWebViewDelegate {
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
