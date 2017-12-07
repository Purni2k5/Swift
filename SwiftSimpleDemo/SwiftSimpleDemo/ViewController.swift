//
//  ViewController.swift
//  SwiftSimpleDemo
//
//  Created by Siddhant on 04/12/17.
//  Copyright © 2017 Loylty Rewardz. All rights reserved.
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
@IBAction func swiftAction()
{
    let name="siddhant"
    print("your name is "+name)
  
    let namez="Siddhant"
    print("Hey Swift \(namez)")
    let alert=UIAlertController(title:"Swift", message: "Hey Swift", preferredStyle: UIAlertControllerStyle.alert)
 
    
    let action=UIAlertAction(title:"ok", style:.default, handler: nil)
    alert.addAction(action)
    self.present(alert, animated: true, completion:nil)
}

}

