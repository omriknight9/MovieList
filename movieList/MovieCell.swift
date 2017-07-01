//
//  MovieCell.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit
import SDWebImage

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var releaseYearLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var genreLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func createCell(movie: Movie) {
        self.titleLbl.text = movie.title
        self.releaseYearLbl.text = "\(movie.releaseYear)"
        self.ratingLbl.text = "\(movie.rating) ⭐️"
        
        movieImage.layer.cornerRadius = 10.0
        movieImage.clipsToBounds = true
        
        self.movieImage.sd_setImage(with: URL(string: movie.image))
        self.genreLbl.text = movie.genre
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


