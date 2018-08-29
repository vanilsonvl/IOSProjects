//
//  ViewController.swift
//  ApiConnections
//
//  Created by Vanilson NiLL on 23/08/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: "https://blockchain.info/pt/ticker") {
            let task = URLSession.shared.dataTask(with: url) { (datas, request, error) in
                if error == nil {
                    print("sucess")
                    if let datasReturn = datas {
                        do {
                            if let objJson = try JSONSerialization.jsonObject(with: datasReturn, options: []) as? [String: Any] {
                                print(objJson)
                                if let brl = objJson["BRL"] as? [String: Any] {
                                    print(brl)
                                    for (key, value) in brl {
                                        print("key:")
                                        print(key)
                                        print("value:")
                                        print(value)
                                        print("\n")
                                    }
                                    if let price = brl["buy"] as? String {
                                        print(price)
                                    }
                                    if let mm = brl["15m"] as? String {
                                        print(mm)
                                    }
                                }
                            }
                        } catch{
                            print("error json")
                        }
                    }
                } else {
                    print("error")
                }
            }
            task.resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

