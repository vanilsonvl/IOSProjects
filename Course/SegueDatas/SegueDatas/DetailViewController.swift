//
//  DetailViewController.swift
//  SegueDatas
//
//  Created by Vanilsonvl on 27/06/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var resultText: UILabel!
    var textReceive:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.text = textReceive
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
