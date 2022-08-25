//
//  GameTests.swift
//  RockPaperScissorsTests
//
//  Created by Angélica Alemán Cabrales on 25/08/22.
//

import XCTest
@testable import RockPaperScissors

class GameTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    let game = Game()
    // case 1: tie
    // case 2: user wins
    // case 3: computer wins
    
    func testGameRockRock() throws {
        // GIVEN rock as the choice for both computer and player
        let playerChoice = "rock"
        let computerChoice = "rock"
    
        // WHEN the game is executed, we get an int that indicates the result of said game
        let gameResult = game.gameLogical(computer: computerChoice, player: playerChoice)
        
        // THEN for a tie, the expected result is 1, as the tie is the case 1 in our function
        let expectedResult = 1 // case for a tie
        XCTAssertEqual(gameResult, expectedResult)
    }
    
    func testGamePaperRock() throws {
        // GIVEN paper as the choice for player and rock for the computer
        let playerChoice = "paper"
        let computerChoice = "rock"
    
        // WHEN the game is executed, we get an int that indicates the result of said game
        let gameResult = game.gameLogical(computer: computerChoice, player: playerChoice)
        
        // THEN for the user to get a win, the expected result is 2 (case 2)
        let expectedResult = 2 // case when the player wins
        XCTAssertEqual(gameResult, expectedResult)
    }
    
    func testGameScissorsPaper() throws {
        // GIVEN paper as the choice for player and rock for the computer
        let playerChoice = "paper"
        let computerChoice = "scissors"
    
        // WHEN the game is executed, we get an int that indicates the result of said game
        let gameResult = game.gameLogical(computer: computerChoice, player: playerChoice)
        
        // THEN for the computer to get a win, the expected result is 3 (case 3)
        let expectedResult = 3 // case when te computer wins
        XCTAssertEqual(gameResult, expectedResult)
    }

}
