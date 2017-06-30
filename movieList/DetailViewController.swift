//
//  DetailViewController.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var releaseYearLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    
    var movie: Movie = Movie()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = movie.title
        ratingLbl.text = "Rating: \(movie.rating) ⭐️"
        releaseYearLbl.text = "Release Year: \(movie.releaseYear)"
        
        movieImage.layer.cornerRadius = 5.0
        movieImage.clipsToBounds = true
        
        movieImage.sd_setImage(with: URL(string: movie.image))
    }
    
    @IBAction func backToList(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
