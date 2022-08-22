//
//  Computer.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 22/08/22.
//

import Foundation

public class Computer {
    // generate a random number for the computer to get its choice for the game
    
    func createComputerAnswer() -> String {
        // generate a random number for the computer to get its choice for the game
        let cpuComputer = Int.random(in: 1...3)
        
        // asign a choice for the computer according to the previous number
        var computerChoice : String {
            switch cpuComputer {
                case 1:
                    return "rock"
                case 2:
                    return "paper"
                case 3:
                    return "scissors"
                default:
                    return " "
            }
        }
        
        // give the value to the function that will the logic
        return computerChoice
    }
    
}
