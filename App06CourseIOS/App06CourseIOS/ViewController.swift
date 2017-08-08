//
//  ViewController.swift
//  App06CourseIOS
//
//  Created by Vanilson on 27/06/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LauncherCoin" {
            let random = arc4random_uniform(2)
            let destinationViewController = segue.destination as! DetailViewController
            destinationViewController.numberReceive = Int(random)
        }
    }

}

