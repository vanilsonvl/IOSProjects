//
//  ViewController.swift
//  AppCoreData
//
//  Created by Vanilson NiLL on 28/08/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
//        let user = NSEntityDescription.insertNewObject(forEntityName: "User", into: context)
//        user.setValue("Vanilson", forKey: "name")
//        user.setValue("vanilson", forKey: "login")
//        user.setValue("vava123", forKey: "password")
//        user.setValue(28, forKey: "age")
//        do {
//            try context.save()
//            print("Dados salvos com sucesso")
//        } catch {
//            print("Erro ao salvar")
//        }
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        do {
            let users = try context.fetch(request)
            if users.count > 0 {
                for user in users {
                    if let name = (user as AnyObject).value(forKey: "name") {
                        print(name)
                    }
                }
            } else {
                print("Nenhum usuário encontrado")
            }
        } catch {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

