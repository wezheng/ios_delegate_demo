//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Wenchao Zheng on 2015-06-01.
//  Copyright (c) 2015 Wenchao Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController,DataEnterDelegate {
    @IBOutlet weak var dataLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func userDidEnter(info: NSString) {
        dataLabel.text = info as String
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showSecondVC" {
            print("3")
            let secondVC:SecondViewController = segue.destinationViewController as! SecondViewController
            secondVC.delegate = self
        }
    }
}

