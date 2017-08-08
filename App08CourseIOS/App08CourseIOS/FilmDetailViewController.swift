//
//  FilmDetailViewController.swift
//  App08CourseIOS
//
//  Created by Palotec on 08/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class FilmDetailViewController : UIViewController {
    
    @IBOutlet weak var filmImage: UIImageView!
    @IBOutlet weak var filmTitle: UILabel!
    @IBOutlet weak var filmDescription: UILabel!
    
    var film: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        filmImage.image = film.image
        filmTitle.text = film.title
        filmDescription.text = film.description
        
    }
}
