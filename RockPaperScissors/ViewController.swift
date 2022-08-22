//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    let game = Game()

    // button action for the image of rock
    @IBAction func clickRock(_ sender: UIButton) {
        // string for the player's choice
        let playerChoice = "rock"
        
        // give the string to the function that will get its value
        let rock = game.getPlayerChoice(player: playerChoice)
    }
    
    // button action for the image of paper
    @IBAction func clickPaper(_ sender: UIButton) {
        // string for the player's choice
        let playerChoice = "paper"
        
        // give the string to the function that will get its value
        let paper = game.getPlayerChoice(player: playerChoice)
    }
    
    // button action for the image of scissors
    @IBAction func clickScissors(_ sender: UIButton) {
        // string for the player's choice
        let playerChoice = "scissors"
        
        // give the string to the function that will get its value
        let scissors = game.getPlayerChoice(player: playerChoice)
    }
    
    // button action for restart
    @IBAction func clickRestart(_ sender: UIButton) {
        // call function to restart scores
    }
}
