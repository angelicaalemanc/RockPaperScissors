//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    // creating objects
    let game = Game()
    let computer = Computer()
    
    // function to start the game in every button
    func startGame(playerChoice: String){
        let computerChoice = computer.createComputerAnswer() // get the computer's choice
        game.gameLogical(computer: computerChoice, player: playerChoice) // call the game
    }

    // button action for the image of rock
    @IBAction func clickRock(_ sender: UIButton) {
        let player = "rock" // string for player's choice rock
        startGame(playerChoice: player) // call funcion game
    }
    
    // button action for the image of paper
    @IBAction func clickPaper(_ sender: UIButton) {
        let player = "paper" // string for player's choice paper
        startGame(playerChoice: player) // call funcion game
    }
    
    // button action for the image of scissors
    @IBAction func clickScissors(_ sender: UIButton) {
        let player = "scissors" // string for player's choice scissors
        startGame(playerChoice: player) // call funcion game
    }
    
    // button action for restart
    @IBAction func clickRestart(_ sender: UIButton) {
        // call function to restart scores
    }
}
