//
//  ViewController.swift
//  App04CourseIOS
//
//  Created by Palotec on 12/05/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var gasolinePrice: UITextField!
    @IBOutlet weak var alcoholPrice: UITextField!
    @IBOutlet weak var result: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_calculate(_ sender: Any) {
        
        var alcohol: Double = 0;
        var gasoline: Double = 0;
        
        if let resultAlcohol = alcoholPrice.text {
            if resultAlcohol != "" {
                if let numberAlcohol = Double(resultAlcohol) {
                    alcohol = numberAlcohol
                }
            }
        }
        
        if let resultGasoline = gasolinePrice.text {
            if resultGasoline != "" {
                if let numberGasoline = Double(resultGasoline) {
                    gasoline = numberGasoline
                }
            }
        }
        
        if (alcohol / gasoline) >= 0.7 {
            result.text = "Melhor utilizar Gasolina!"
        } else {
            result.text = "Melhor utilizar Álcool!"
        }
        
    }

}

