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
        }
        else if (player == "rock") {
            if (computer == "paper") {
                //Partida.puntajeComputadora += 1
                print ("computer scores")
            } else {
                //Partida.puntajeComputadora += 1
                print ("player scores")
            }
        }
        else if (player == "paper") {
            if (computer == "scissors") {
                //Partida.puntajeComputadora += 1
                print ("computer scores")
            } else {
                //Partida.puntajeComputadora += 1
                print ("player scores")
            }
        }
        else if (player == "scissors") {
            if (computer == "rock") {
                //Partida.puntajeComputadora += 1
                print ("computer scores")
            } else {
                //Partida.puntajeComputadora += 1
                print ("player scores")
            }
        }
        else {
            print("Error en la partida")
        }
        return 0
    }
}
