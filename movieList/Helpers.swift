//
//  Helpers.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class Helpers: NSObject {
     
    class func downloadJson() -> [Movie] {
        
        var movie = [Movie]()
        
        if let url = Bundle.main.url(forResource: "movies", withExtension: "json") {
            if let data = NSData(contentsOf: url) {
                do {
                    let jsonObj = try JSONSerialization.jsonObject(with: data as Data, options: .allowFragments)
                    
                    let dictionary = jsonObj as! [[String: AnyObject]]
                    
                    for i in 0..<dictionary.count {
                        movie.append(Movie(object: dictionary[i]))
                        print(jsonObj)
                    }
                    
                }catch  {
                    print(error)
                }
                
            }
            
        }
        return movie
    }

}




