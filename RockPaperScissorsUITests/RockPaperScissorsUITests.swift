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
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSameChoice() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    // if the rock button is clicked, the winner label should change. if not, test will fail
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
    
    // if the paper button is clicked, the winner label should change. if not, test will fail
    func testOnClickPaper() throws {
        // UI tests must launch the application that they test.
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
    
    // if the scissors button is clicked, the winner label should change. if not, test will fail
    func testOnClickScissors() throws {
        // UI tests must launch the application that they test.
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
    
    // if the restar button is clicked, the winner label should restart to its original, if not, test will fail
    func testOnClickRestart() throws {
        // UI tests must launch the application that they test.
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
