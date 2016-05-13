//
//  ViewController.swift
//  JHHttpClient
//
//  Created by jianghuan on 05/12/2016.
//  Copyright (c) 2016 jianghuan. All rights reserved.
//

import UIKit
import JHHttpClient

class ViewController: UIViewController {
    
    @IBOutlet weak var api: UITextField!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var response: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func onNavigated(sender: AnyObject) {
        
        JHHttpClient.invoke(self.api.text!) { (response, error) in
            print(response)
            if let jsonResult = response as? Dictionary<String, AnyObject> {
                print(jsonResult)
                print("-----")
                print(jsonResult.description)
                let str = jsonResult.description
                self.response.text = str
            }
        }
    }
}


