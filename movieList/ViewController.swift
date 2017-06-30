//
//  ViewController.swift
//  movieList
//
//  Created by Omri Shalev on 30/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        perform(#selector(ViewController.goToList), with: nil, afterDelay: 3.0)
        
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
        
        let transform: CGAffineTransform = CGAffineTransform(scaleX: 2.0, y: 2.0)
        activityIndicator.transform = transform
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        
    }
    
    func goToList() {
        performSegue(withIdentifier: "goToList", sender: nil)
        activityIndicator.stopAnimating()
    }


}

