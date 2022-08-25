//
//  Computer.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 22/08/22.
//

import Foundation

public class Computer {

    func createComputerAnswer() -> String {
        // generate a random number for the computer to get its choice for the game
        let cpuComputer = Int.random(in: 1...3)
        
        // asign a choice according to the previous number
        var computerChoice : String {
            switch cpuComputer {
                case 1:
                    return "rock"
                case 2:
                    return "paper"
                case 3:
                    return "scissors"
                default:
                    return ""
            }
        }
        return computerChoice
    }
    
}
