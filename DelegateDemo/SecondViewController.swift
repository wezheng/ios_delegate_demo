//
//  SecondViewController.swift
//  DelegateDemo
//
//  Created by Wenchao Zheng on 2015-06-01.
//  Copyright (c) 2015 Wenchao Zheng. All rights reserved.
//

import UIKit
protocol DataEnterDelegate{
    func userDidEnter(info:NSString)
}

class SecondViewController: UIViewController {

    var delegate:DataEnterDelegate? = nil
    
    @IBOutlet weak var dataTextField: UITextField!
    @IBAction func collectData(sender: AnyObject) {
        print("0")
        if (delegate != nil){
            let information:NSString  = dataTextField.text
            delegate?.userDidEnter(information)
            self.navigationController?.popViewControllerAnimated(true)
            print("2")
        }
    }
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
