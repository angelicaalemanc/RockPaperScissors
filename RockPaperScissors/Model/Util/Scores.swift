//
//  Scores.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 23/08/22.
//

import Foundation

public class Scores {
    
    // create variables
    var playerScore = 0
    var computerScore = 0
    var winner = ""
    
    // Update scores according to the case (tie/player winner/cpu winner)
    func updateScores(value: Int) -> (Int, Int, String) {
        switch value {
            case 1:
                winner = "No winner. It was a tie."
            case 2:
                playerScore += 1
                winner = "Player"
            case 3:
                computerScore += 1
                winner = "CPU"
            default:
                break
        }
        return (playerScore, computerScore, winner)
    }
    
    // restart scores
    func restartScores() {
        playerScore = 0
        computerScore = 0
    }
    
}
