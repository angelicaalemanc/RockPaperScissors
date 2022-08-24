//
//  Scores.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 23/08/22.
//

import Foundation

public class Scores {
    
    // create game object to get instructions
    var playerScore = 0
    var computerScore = 0
    var winner = ""
    
    // Update scores
    func updateScores(value: Int) -> (Int, Int, String) {
        switch value {
            case 1:
                self.playerScore += 0
                self.computerScore += 0
                winner = "No winner. It was a tie."
            case 2:
                playerScore += 1
                winner = "Player"
            case 3:
                computerScore += 1
                winner = "CPU"
            default:
                self.playerScore += 0
                self.computerScore += 0
        }
        return (playerScore, computerScore, winner)
    }
    
    // restart scores
    func restartScores() {
        playerScore = 0
        computerScore = 0
    }
    
}
