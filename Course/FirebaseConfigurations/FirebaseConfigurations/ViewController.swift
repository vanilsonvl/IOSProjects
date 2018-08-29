//
//  ViewController.swift
//  FirebaseConfigurations
//
//  Created by Vanilson NiLL on 27/08/2018.
//  Copyright © 2018 Vanilson NiLL. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let database = Database.database().reference()
        let score = database.child("score")
        //add value
        //score.setValue("400")
        //remove child
        //score.removeValue()
        
        //let user = database.child("users")
        //user.child("0001").child("name").setValue("Vanilson")
        //user.removeValue()
        
        //get objects
//        score.observe(DataEventType.value) { (datasReturned) in
//            if let score = datasReturned.value {
//                self.scoreLabel.text = String(describing: score)
//                print(score)
//            }
//        }
        let user = Auth.auth()
        
        user.signIn(withEmail: "vanilsonvl@gmail.com", password: "vava12345") { (user, error) in
            if error == nil {
                print("Successo ao logar o usuario!")
            } else {
                print("Erro ao logar" + String(describing: error?.localizedDescription))
            }
        }
//        do {
//            try user.signOut()
//        } catch {
//            print("Erro ao deslogar")
//        }
        user.addStateDidChangeListener{(authentication, user) in
            if let loggedUser = user {
                print("Usuario logado!" + String(describing: loggedUser.email))
            } else {
                print("Usuario não está logado!")
            }
        }
        //Creating user
//        user.createUser(withEmail: "vanilsonvl@gmail.com", password: "vava12345") {
//            (user, error) in
//            if error == nil {
//                print("Usuario logado!" + String(describing: user?.email))
//            } else {
//                print("Usuario não está logado!" + String(describing: error?.localizedDescription))
//            }
//        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

