//
//  movieListViewController.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class movieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

//    let urlString = "http://api.androidhive.info/json/movies.json"
    
    @IBOutlet weak var movieTableView: UITableView!
    
    var movie:[Movie] = [Movie]()
    var currentMovies:[Movie] = [Movie]()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movie = Helpers.downloadJson()
        self.movieTableView.reloadData()
        sort()
        
    }
    
    func sort() {
        movie.sort(by: { $0.releaseYear < $1.releaseYear })
        movieTableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
        
        cell.createCell(movie: movie[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    

}
