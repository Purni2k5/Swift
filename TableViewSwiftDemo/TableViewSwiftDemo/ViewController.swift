//
//  ViewController.swift
//  TableViewSwiftDemo
//
//  Created by Siddhant on 06/12/17.
//  Copyright © 2017 Loylty Rewardz. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tblValue:UITableView?
    var array:[String]=[]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(array.isEmpty){
            return 0
        }
        return (array.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:TableCell?
        let cellIdentifier:String="TableCell"
      
        cell=tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TableCell
        cell?.tfName?.text=array[indexPath.row] as String

        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblValue?.register(UINib(nibName: "TableCell", bundle: nil), forCellReuseIdentifier: "TableCell")
        array.append("Siddhant")
        array.append("Mayur")
        array.append("Vilas")
        tblValue?.reloadData()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let alert=UIAlertController(title: "", message: "\(array[indexPath.row])", preferredStyle:UIAlertControllerStyle.alert)
        let action=UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}

