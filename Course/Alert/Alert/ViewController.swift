//
//  ViewController.swift
//  Alert
//
//  Created by Palotec on 10/07/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Adicionar", message: "Deseja adicionar o contato?", preferredStyle: .actionSheet)
        let actionConfirmation = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let actionCancel = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alertController.addAction(actionConfirmation)
        alertController.addAction(actionCancel)
        present(alertController, animated: true, completion: nil)
        
        
    }

}

