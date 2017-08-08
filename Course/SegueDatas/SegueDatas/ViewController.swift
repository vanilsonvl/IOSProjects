//
//  ViewController.swift
//  SegueDatas
//
//  Created by Vanilsonvl on 27/06/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textData: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SendData" {
            let destinationViewController = segue.destination as! DetailViewController
            destinationViewController.textReceive = textData.text
        }
    }
}

