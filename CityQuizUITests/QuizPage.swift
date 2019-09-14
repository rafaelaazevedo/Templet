//
//  quizPage.swift
//  CityQuizUITests
//
//  Created by Rafaela Souza on 13/05/2017.
//  Copyright © 2017 Rafazzevedo. All rights reserved.
//

import XCTest

class quizPage {

    let app = XCUIApplication()

    func assertButton(_ expectedButton: String) {
        let expectedButton = app.alerts["City Quiz"].buttons[expectedButton]
        XCTAssertEqual(expectedButton.exists, false)
    }
    
    func tapCity(_ city: String) {
        let city = app.buttons[city]
        city.tap()
    }
    
    func confirmButton(_  button: String) {
        let buttonTryAgain = app.alerts["City Quiz"].buttons[button]
        buttonTryAgain.tap()
    }
    
    func assertCityMessage(_ successMessage: String) {
        let messageAwesome = app.alerts["City Quiz"].staticTexts[successMessage]
        XCTAssertEqual(messageAwesome.label, successMessage)
    }

}
