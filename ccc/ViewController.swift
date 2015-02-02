//
//  ViewController.swift
//  ccc
//
//  Created by apple on 15/2/1.
//  Copyright (c) 2015年 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
    }


    @IBOutlet weak var shuru: UITextField!
    @IBOutlet weak var jieguo: UILabel!
    @IBAction func kaishi(sender: AnyObject) {
        var randomnumber = arc4random_uniform(10)
        var guessint = shuru.text.toInt()
        if guessint != nil {
            if Int(randomnumber) == guessint {
                jieguo.text = "good guess"
            }
            else {
                jieguo.text = "sorry it's " + String (randomnumber)
            }
            //funtion
        }
        else {jieguo.text = "error"
            //error
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
