//
//  Game.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 22/08/22.
//

import Foundation

public class Game {

    let logical = Game()
    
    //  function to return the choice for computer
    func getComputerChoice(computer: String) -> String {
        let computer = Computer()
        let answer = computer.createComputerAnswer()
        return answer
    }
    
    //  function to return the choice for computer
    func getPlayerChoice(player: String) -> String {
        return player
    }
    
    func gameLogical() {
        // logical pf the game
    }
}
