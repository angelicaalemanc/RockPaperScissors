//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Angélica Alemán Cabrales on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // button action for the image of rock
    @IBAction func clickRock(_ sender: UIButton) {
        print("rock")
    }
    
    // button action for the image of paper
    @IBAction func clickPaper(_ sender: UIButton) {
        print("paper")
    }
    
    // button action for the image of scissors
    @IBAction func clickScissors(_ sender: UIButton) {
        print("scissors")
    }
    
    // button action for restart
    @IBAction func clickRestart(_ sender: UIButton) {
        print("restart")
    }
}

