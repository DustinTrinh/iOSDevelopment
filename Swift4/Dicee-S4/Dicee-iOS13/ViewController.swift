//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!

    
    @IBOutlet weak var score: UILabel!
    
    @IBAction func rollDice(_ sender: Any) {
        let ran1 = Int.random(in: 0..<6)
        let ran2 = Int.random(in: 0..<6)

        var finalScore = 0
        //use imageLiteral to set img view
        dice1.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][ran1]
        dice2.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][ran2]

        finalScore = ran1 + ran2 + 2
        score.text = String(finalScore)
        print("Score is: " + String(finalScore))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        score.text = ""
        // Do any additional setup after loading the view.
        
    }

    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("Shook")
            rollDice(self)
        }
    }
}

