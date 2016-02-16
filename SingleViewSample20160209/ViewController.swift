//
//  ViewController.swift
//  SingleViewSample20160209
//
//  Created by 松井和久 on 2016/02/09.
//  Copyright © 2016年 松井和久. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var testLabel: UILabel!
    
    @IBAction func moveSlide(sender: UISlider) {
        testLabel.text = String(sender.value)
    
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        NSUserDefaults.standardUserDefaults().setValue("test", forKey: "key")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

