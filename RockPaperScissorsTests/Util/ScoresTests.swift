//
//  ScoresTests.swift
//  RockPaperScissorsTests
//
//  Created by Angélica Alemán Cabrales on 25/08/22.
//

import XCTest
@testable import RockPaperScissors

class ScoresTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    let scores = Scores()

    func testScoresChanging() throws {
        // GIVEN
        let caseGame = 2 // case 2: user wins

        // WHEN the scores have to be updated
        let scoreResult = scores.updateScores(value: caseGame)
        
        // THEN the function returns boths scores and the winner. for a case 2, the player should make a point and be the winner
        let expectedResultPlayer = 1
        let expectedResultComputer = 0 // the computer doesn't get a point
        let expectedWinner = "Player"
        XCTAssertEqual(expectedResultPlayer, scoreResult.0)
        XCTAssertEqual(expectedResultComputer, scoreResult.1)
        XCTAssertEqual(expectedWinner, scoreResult.2)
    }

}
