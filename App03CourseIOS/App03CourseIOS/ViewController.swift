//
//  ViewController.swift
//  App03CourseIOS
//
//  Created by Palotec on 24/04/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phrase: UILabel!
    var arrayPhrases:[String] = [
    "Hoje não se lamente, rodeie-se de boas energias e alcance o topo da felicidade.",
    "Seu passado pode tornar sua cabeça uma bigorna e seu futuro transformar seus braços em asas, mas só o presente é comandado por você!",
    "Hoje é tarde para fazer o que não fez ontem, mas é o dia perfeito para realizar o que acha que pode deixar para amanhã!",
    "Dance ao som da sua canção preferida e escute a voz do seu coração hoje mesmo!"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newPhrase(_ sender: Any) {
        
        let _index = Int(arc4random_uniform(4))
        phrase.text = arrayPhrases[_index]
     
    }

}

