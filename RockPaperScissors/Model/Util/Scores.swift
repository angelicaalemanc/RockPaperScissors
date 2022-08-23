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
    
    // Update scores
    func updateScores(value: Int) -> (Int, Int) {
        switch value {
            case 1:
                self.playerScore += 0
                self.computerScore += 0
                
            case 2:
                playerScore += 1
            case 3:
                computerScore += 1
            default:
                self.playerScore += 0
                self.computerScore += 0
        }
        return (playerScore, computerScore)
    }
    
    // restart scores
    func restartScores() {
        playerScore = 0
        computerScore = 0
    }
    
}
