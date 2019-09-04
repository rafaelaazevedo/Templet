//
//  CityQuizUITests.swift
//  CityQuizUITests
//
//  Created by Rafaela Souza on 13/05/2017.
//  Copyright © 2017 Rafazzevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!

    
    func showAlert(_city: String){
        var message = ""
        if cityLabel.text == _city {
            message = "You are Awesome. I am \(_city)"
        }
        else {
            message = "I'm sorry, I am not \(cityLabel.text!)!"
        }
        let alert = UIAlertController(title: "City Quiz", message: message, preferredStyle: .alert)
        
        let actions = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(actions)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showLondon() {
        showAlert(_city: "London")
    }

    @IBAction func showParis() {
        showAlert(_city: "Paris")
    }
    @IBAction func showLisbon() {
       showAlert(_city: "Lisbon")
    }
   
    @IBAction func showBarcelona() {
       showAlert(_city: "Barcelona")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = "Lisbon"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

