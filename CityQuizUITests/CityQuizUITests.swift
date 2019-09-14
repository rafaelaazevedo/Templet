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
        let expectedButton = "Awesome"
        quizPage().tapCity("lisbon")
        quizPage().assertCityMessage("You are Awesome. I am Lisbon!")
        quizPage().confirmButton(expectedButton)
        quizPage().assertButton(expectedButton)
    }
    
    func testWrongCity() {
        let expectedButton = "Try again"
        quizPage().tapCity("london")
        quizPage().assertCityMessage("I'm sorry... I'm not Lisbon!")
        quizPage().confirmButton(expectedButton)
        quizPage().assertButton(expectedButton)
    }

}
