//
//  Movie.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class Movie {
    var title = ""
    var image = ""
    var rating = 0.0
    var releaseYear = 0
    var genre = ""
    
    
    init(object: [String: AnyObject]) {
        self.title = object["title"] as! String
        self.image = object["image"] as! String
        self.rating = object["rating"] as! Double
        self.releaseYear = object["releaseYear"] as! Int
        
    }
    
    init(){
        
    }
}


