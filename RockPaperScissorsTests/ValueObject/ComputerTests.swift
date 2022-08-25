//
//  ComputerTests.swift
//  RockPaperScissorsTests
//
//  Created by Angélica Alemán Cabrales on 25/08/22.
//

import XCTest
@testable import RockPaperScissors

class ComputerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    let computer = Computer()

    func testComputerAnswer() throws {
        // GIVEN a random number between 1 and 3
        // player = "paper"
    
        // WHEN the computer calculates their answer
        let computerAnswer =  computer.createComputerAnswer()
        
        // THEN we must get an answer
        let expectedAnswers = ["rock", "paper", "scissors"]
        let compare = expectedAnswers.contains(computerAnswer)
        XCTAssert(compare)
    }

}
