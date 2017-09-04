//
//  ViewController.swift
//  ios-nserror-demo
//
//  Created by Yuu Ogasa on 2017/09/04.
//  Copyright © 2017年 SundayCarpenter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension UIViewController {
    func showErrorAlert(error:NSError){
        var title:String!
        var message:String?
        var btnTitle:String!
        
        if error.localizedFailureReason == nil{
            message = error.localizedDescription
        }else{
            message = error.localizedFailureReason
        }
        
        if let suggestion = error.localizedRecoverySuggestion {
            title = suggestion
        }else{
            title = "error"
        }
        
        if let titles = error.localizedRecoveryOptions {
            btnTitle = titles[0]
        }else{
            btnTitle = "OK"
        }
        
        let alertView = UIAlertView(title: title, message: message,
                                    delegate: nil,
                                    cancelButtonTitle: btnTitle)
        alertView.show()
    }
}
