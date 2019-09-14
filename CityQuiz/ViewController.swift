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

    private func messageForCity(_ city: String) -> String {
        return isSelectedCity(city) ? "You are Awesome. I am \(city)!" : "I'm sorry... I'm not \(cityLabel.text!)!"
    }
    
    private func buttonTitleForCity(_ city: String) -> String {
        return isSelectedCity(city) ? "Awesome" : "Try again"
    }
    
    private func isSelectedCity(_ city: String) -> Bool {
        return cityLabel.text == city
    }
    
    func showAlert(_ city: String){
        let message = messageForCity(city)
        let buttonTitle = buttonTitleForCity(city)
        let alert = UIAlertController(title: "City Quiz", message: message, preferredStyle: .alert)
        let actions = UIAlertAction(title: buttonTitle, style: .default, handler: nil)
        
        alert.addAction(actions)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showLondon() {
        showAlert("London")
    }

    @IBAction func showParis() {
        showAlert("Paris")
    }
    @IBAction func showLisbon() {
       showAlert("Lisbon")
    }
   
    @IBAction func showBarcelona() {
       showAlert("Barcelona")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = "Lisbon"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

