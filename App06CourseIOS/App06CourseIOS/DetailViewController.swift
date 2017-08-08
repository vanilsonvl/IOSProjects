//
//  DetailViewController.swift
//  App06CourseIOS
//
//  Created by Vanilson on 27/06/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var coinImage: UIImageView!
    var numberReceive:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if numberReceive == 0 {
            coinImage.image = #imageLiteral(resourceName: "moeda_cara")
        } else {
            coinImage.image = #imageLiteral(resourceName: "moeda_coroa")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
