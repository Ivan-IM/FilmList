//
//  DetailedHorrorViewController.swift
//  FilmList
//
//  Created by Vlad Vinogrotskiy on 19.06.2021.
//

import UIKit

class DetailedHorrorViewController: UIViewController {
    
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var filmDescription: UILabel!
    
    var horrorFilm: Horror!

    override func viewDidLoad() {
        super.viewDidLoad()

        image.image = UIImage(named: horrorFilm.image)
        filmDescription.text = "\(horrorFilm.author), \(horrorFilm.image), \(horrorFilm.name)"
        
    }
    


}
