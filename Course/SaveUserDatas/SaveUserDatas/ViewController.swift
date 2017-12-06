//
//  ViewController.swift
//  SaveUserDatas
//
//  Created by Palotec on 29/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        UserDefaults.standard.set("blue", forKey: "backgroundColor")
//        let text = UserDefaults.standard.object(forKey: "backgroundColor")
//        print(text)
//        let array : [String] = ["Lasanha", "Pizza", "Torta"]
//        UserDefaults.standard.set(array, forKey: "foods")
        UserDefaults.standard.removeObject(forKey: "foods")
        let arrayRecovery = UserDefaults.standard.object(forKey: "foods")
        print(arrayRecovery)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

