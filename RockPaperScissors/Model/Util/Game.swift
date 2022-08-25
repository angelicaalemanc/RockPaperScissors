//
//  Game.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 22/08/22.
//

import Foundation

public class Game {
    
    // logical of the game
    // 1: case 1 - tie
    // 2: case 2 - player wins
    // 3: case 3 - cpu wins
    func gameLogical(computer: String, player: String) -> Int {
        
        if (computer == player) {
            return 1
        }
        else if (player == "rock") {
            if (computer == "paper") {
                return 3
            } else {
                return 2
            }
        }
        else if (player == "paper") {
            if (computer == "scissors") {
                return 3
            } else {
                return 2
            }
        }
        else if (player == "scissors") {
            if (computer == "rock") {
                return 3
            } else {
                return 2
            }
        }
        else {
            return 0
        }
    }
}
