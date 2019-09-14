//
//  CityQuizUITests.swift
//  CityQuizUITests
//
//  Created by Rafaela Souza on 13/05/2017.
//  Copyright © 2017 Rafazzevedo. All rights reserved.
//

import XCTest

class CityQuizUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCorrectCity() {
        quizPage().tapCity(_city: "Lisbon")
        quizPage().assertCityMessage(_successMessage: "You are Awesome. I am Lisbon")
        quizPage().awesomeButton()
        quizPage().assertButtonAwesome()
    }
    
    func testWrongCity() {
        quizPage().tapCity(_city: "London")
        quizPage().assertCityMessage(_successMessage: "I'm sorry, I am not Lisbon!")
        quizPage().awesomeButton()
        quizPage().assertButtonAwesome()
    }

}
