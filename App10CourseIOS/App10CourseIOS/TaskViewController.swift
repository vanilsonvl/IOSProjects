//
//  TaskViewController.swift
//  App10CourseIOS
//
//  Created by Palotec on 28/09/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class TaskViewController : UIViewController {
    @IBOutlet weak var taskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func saveTask(_ sender: Any) {
        if let task = taskTextField.text {
            let taskUsersDefaults = TaskUserDefaults()
            taskUsersDefaults.saveTask(task: task)
            taskTextField.text = ""
        }
    }
}
