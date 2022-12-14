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
    let scores = Scores()
    
    // outlets for labels changing
    @IBOutlet weak var playerLabel: UILabel!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    // function to start the game
    func startGame(playerChoice: String){
        let computerChoice = computer.createComputerAnswer() // get the computer's choice
        let result = game.gameLogical(computer: computerChoice, player: playerChoice) // call the game
        let score = scores.updateScores(value: result) // get the scores updated
        changeLabels(scores: (score.0, score.1, score.2))
    }
    
    func changeLabels (scores: (Int, Int, String)) {
        DispatchQueue.main.async {
            self.playerLabel.text = String(scores.0)
            self.computerLabel.text = String(scores.1)
            self.winnerLabel.text = "Winner: " + scores.2
        }
    }

    // button action for the image of rock
    @IBAction func clickRock(_ sender: UIButton) {
        let player = "rock" // string for player's choice
        startGame(playerChoice: player) // call funcion game
    }
    
    // button action for the image of paper
    @IBAction func clickPaper(_ sender: UIButton) {
        let player = "paper"
        startGame(playerChoice: player)
    }
    
    // button action for the image of scissors
    @IBAction func clickScissors(_ sender: UIButton) {
        let player = "scissors"
        startGame(playerChoice: player)
    }
    
    // button action for restart (scores and winner)
    @IBAction func clickRestart(_ sender: UIButton) {
        scores.restartScores()
        self.playerLabel.text = String(0)
        self.computerLabel.text = String(0)
        self.winnerLabel.text = "Winner: "
    }
}
