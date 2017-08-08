//
//  ViewController.swift
//  App07CourseIOS
//
//  Created by Palotec on 02/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signs:[String] = []
    var signsMeaning:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        signs.append("Áres")
        signs.append("Touro")
        signs.append("Gêmeos")
        signs.append("Câncer")
        signs.append("Leão")
        signs.append("Virgem")
        signs.append("Libra")
        signs.append("Escorpião")
        signs.append("Sagitário")
        signs.append("Capricórnio")
        signs.append("Aquários")
        signs.append("Peixes")
        
        signsMeaning.append("Ariano")
        signsMeaning.append("Touro")
        signsMeaning.append("3")
        signsMeaning.append("4")
        signsMeaning.append("5")
        signsMeaning.append("6")
        signsMeaning.append("7")
        signsMeaning.append("8")
        signsMeaning.append("9")
        signsMeaning.append("10")
        signsMeaning.append("11")
        signsMeaning.append("12")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseCell", for: indexPath)
        cell.textLabel?.text = signs[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertController = UIAlertController(title: "Significado do Signo", message: signsMeaning[indexPath.row], preferredStyle: .alert)
        let actionConfirmation = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(actionConfirmation)
        present(alertController, animated: true, completion: nil)
    }
}

