//
//  Film.swift
//  App08CourseIOS
//
//  Created by Palotec on 03/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class Film {
    
    var title: String!
    var description: String!
    var image: UIImage!
    
    init(title: String, description: String, image: UIImage) {
        self.title = title
        self.description = description
        self.image = image
    }
    
}
