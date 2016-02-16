//
//  TableViewController.swift
//  SingleViewSample20160209
//
//  Created by 松井和久 on 2016/02/09.
//  Copyright © 2016年 松井和久. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    var tableData = ["Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie","Lovin", "Emma", "Heesey", "Annie"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let test = NSUserDefaults.standardUserDefaults().objectForKey("key") as? String
        
        if let val = test {
            print(val + 1.description)
        }


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableData.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // ProtoTypeセルの取得
        let cell = tableView.dequeueReusableCellWithIdentifier("cells", forIndexPath: indexPath)

        let nameLabel = cell.viewWithTag(1) as! UILabel
        nameLabel.text = tableData[indexPath.row]
        let eqLabel = cell.viewWithTag(2) as! UILabel
        eqLabel.text = "hoge";
        
        // ßcell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }

}
