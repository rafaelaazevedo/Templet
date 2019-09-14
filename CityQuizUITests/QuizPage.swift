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

    func assertButtonAwesome() {
        var buttonAwesome = app.alerts["City Quiz"].buttons["Awesome"]
        XCTAssertEqual(buttonAwesome.exists, false)
    }
    
    func tapCity(_city: String) {
        var city = app.otherElements.containing(.staticText, identifier: _city).children(matching: .button).matching(identifier: "Button").element(boundBy: 1)
        city.tap()
    }
    
    func awesomeButton() {
        var buttonAwesome = app.alerts["City Quiz"].buttons["Awesome"]
        buttonAwesome.tap()
    }
    
    func assertCityMessage(_successMessage: String) {
        var messageAwesome = app.alerts["City Quiz"].staticTexts[_successMessage]
        XCTAssertEqual(messageAwesome.label, _successMessage)
    }

}
