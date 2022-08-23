//
//  Game.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 22/08/22.
//

import Foundation

public class Game {
    
    // logical of the game
    func gameLogical(computer: String, player: String) -> Int {
        print("\nPlayer: " + player)
        print("Computer: " + computer)
        
        if (computer == player) {
            print("tie")
            return 1
        }
        else if (player == "rock") {
            if (computer == "paper") {
                print ("computer scores")
                return 3
            } else {
                print ("player scores")
                return 2
            }
        }
        else if (player == "paper") {
            if (computer == "scissors") {
                print ("computer scores")
                return 3
            } else {
                print ("player scores")
                return 2
            }
        }
        else if (player == "scissors") {
            if (computer == "rock") {
                print ("computer scores")
                return 3
            } else {
                print ("player scores")
                return 2
            }
        }
        else {
            return 0
        }
    }
}
