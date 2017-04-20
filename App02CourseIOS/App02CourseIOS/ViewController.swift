//
//  ViewController.swift
//  App02CourseIOS
//
//  Created by Palotec on 19/04/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGenerator(_ sender: Any) {
        numberLabel.text = String(arc4random_uniform(11))
        
    }

}

