//
//  ViewController.swift
//  App09CourseIOS
//
//  Created by Vanilson on 29/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textAnnotation: UITextView!
    let annotation: String = "annotation"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let textRecovered = UserDefaults.standard.object(forKey: annotation)
        if textRecovered != nil {
            textAnnotation.text = textRecovered as! String
        }
    }
    
    @IBAction func saveText(_ sender: Any) {
        if let text = textAnnotation.text {
            self.saveAnnotationDatas(text: text)
            hiddenKeyboard()
        }
    }

    func saveAnnotationDatas(text: String) {
        UserDefaults.standard.set(text, forKey: annotation)
    }
    
    func recoveryAnnotationDatas() -> String{
        let textRecovered = UserDefaults.standard.object(forKey: annotation)
        if textRecovered != nil {
            return textRecovered as! String
        }
        return ""
    }
    
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
    
    func hiddenKeyboard() {
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        hiddenKeyboard()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

