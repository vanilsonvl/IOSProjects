//
//  ViewController.swift
//  App10CourseIOS
//
//  Created by Palotec on 28/09/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    var tasks : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTasksList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateTasksList()
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            let taskUserDefaults = TaskUserDefaults()
            taskUserDefaults.removeTask(index: indexPath.row)
            updateTasksList()
            tableView.reloadData()
        }
    }
    
    func updateTasksList() {
        let taskUsersDefault = TaskUserDefaults()
        tasks = taskUsersDefault.listTasks()
    }
}

