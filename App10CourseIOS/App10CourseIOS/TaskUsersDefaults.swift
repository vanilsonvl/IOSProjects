//
//  TaskUsersDefaults.swift
//  App10CourseIOS
//
//  Created by Palotec on 06/10/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class TaskUserDefaults {
    let keyTask = "tasksList"
    var tasks: [String] = []
    
    func saveTask(task: String) {
        tasks = listTasks()
        tasks.append(task)
        UserDefaults.standard.set(tasks, forKey:keyTask )
    }
    
    func listTasks() -> Array<String> {
        let datas = UserDefaults.standard.object(forKey: keyTask)
        if ( datas != nil ) {
            return datas as! Array
        } else {
            return []
        }
    }
    
    func removeTask(index : Int) {
        tasks = listTasks()
        tasks.remove(at: index)
        UserDefaults.standard.set(tasks, forKey:keyTask )
    }
}
