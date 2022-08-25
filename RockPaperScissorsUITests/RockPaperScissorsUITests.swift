//
//  RockPaperScissorsUITests.swift
//  RockPaperScissorsUITests
//
//  Created by Angélica Alemán Cabrales on 18/08/22.
//

import XCTest
@testable import RockPaperScissors

class RockPaperScissorsUITests: XCTestCase {

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        // This method is called after the invocation of each test method in the class.
    }

    // if the rock button is clicked, the winner label should change
    func testOnClickRock() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
            
        // GIVEN
        let rockButton = app.buttons["clickRock"]
            
        // WHEN
        rockButton.tap()

        // THEN
        let winner = app.staticTexts["winnerLabel"]
        XCTAssertNotEqual(winner.label, "Winner: ")
    }
    
    // if the paper button is clicked, the winner label should change
    func testOnClickPaper() throws {
        let app = XCUIApplication()
        app.launch()
            
        // GIVEN
        let paperButton = app.buttons["clickPaper"]
            
        // WHEN
        paperButton.tap()

        // THEN
        let winner = app.staticTexts["winnerLabel"]
        XCTAssertNotEqual(winner.label, "Winner: ")
    }
    
    // if the scissors button is clicked, the winner label should change
    func testOnClickScissors() throws {
        let app = XCUIApplication()
        app.launch()
            
        // GIVEN
        let scissorsButton = app.buttons["clickScissors"]
            
        // WHEN
        scissorsButton.tap()

        // THEN
        let winner = app.staticTexts["winnerLabel"]
        XCTAssertNotEqual(winner.label, "Winner: ")
    }
    
    // if the restar button is clicked, the winner label should restart to its original
    func testOnClickRestart() throws {
        let app = XCUIApplication()
        app.launch()
            
        // GIVEN
        let restartButton = app.buttons["clickRestart"]
            
        // WHEN
        restartButton.tap()

        // THEN
        let winner = app.staticTexts["winnerLabel"]
        XCTAssertEqual(winner.label, "Winner: ")
    }
}
