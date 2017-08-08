//
//  ViewController.swift
//  App08CourseIOS
//
//  Created by Palotec on 03/08/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var films: [Film] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var film: Film
        film = Film(title: "007 - Spectre", description: "Descrição 1", image: #imageLiteral(resourceName: "filme1"))
        films.append(film)
        film = Film(title: "Star Wars", description: "Descrição 2", image: #imageLiteral(resourceName: "filme2"))
        films.append(film)
        film = Film(title: "Impacto Mortal", description: "Descrição 3", image: #imageLiteral(resourceName: "filme3"))
        films.append(film)
        film = Film(title: "Deadpool", description: "Descrição 4", image: #imageLiteral(resourceName: "filme4"))
        films.append(film)
        film = Film(title: "O Regresso", description: "Descrição 5", image: #imageLiteral(resourceName: "filme5"))
        films.append(film)
        film = Film(title: "A Herdeira", description: "Descrição 6", image: #imageLiteral(resourceName: "filme6"))
        films.append(film)
        film = Film(title: "Caçadora de Emoção", description: "Descrição 7", image: #imageLiteral(resourceName: "filme7"))
        films.append(film)
        film = Film(title: "Regresso do Mal", description: "Descrição 8", image: #imageLiteral(resourceName: "filme8"))
        films.append(film)
        film = Film(title: "Tarzan", description: "Descrição 9", image: #imageLiteral(resourceName: "filme9"))
        films.append(film)
        film = Film(title: "Hardcore", description: "Descrição 10", image: #imageLiteral(resourceName: "filme10"))
        films.append(film)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let film = films[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as! FilmCell
        cell.filmImage.image = film.image
        cell.titleLabel.text = film.title
        cell.descriptionLabel.text = film.description
        
//        cell.filmImage.layer.cornerRadius = 42
//        cell.filmImage.clipsToBounds = true
//        cell.textLabel?.text = film.title
//        cell.imageView?.image = film.image
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "filmDetail") {
            if let indexPath = tableView.indexPathForSelectedRow {
                let film = self.films[indexPath.row]
                let newViewController = segue.destination as! FilmDetailViewController
                newViewController.film = film
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

