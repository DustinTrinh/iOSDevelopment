//
//  ViewController.swift
//  tictactoe
//
//  Created by Dustin Trinh on 2018-11-29.
//  Copyright © 2018 DustyTheCutie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //1 is noguht, 2 is crosses

    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func playAgainActionButton(_ sender: Any) {
        
        activePlayer = 1
        gameState = [0,0,0,0,0,0,0,0,0]
        activeGame = true
        count = 0
        winner = 0
        var button: UIButton
        
        for i in 1..<10{
            button = view.viewWithTag(i) as! UIButton
            
            button.setImage(nil, for: [])
        }
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
    }
    
    
    var activePlayer = 1
    var gameState = [0,0,0,0,0,0,0,0,0] // 0 - empty, 1 - nought, 2 - crosses
    let winningCombination = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]
    var activeGame = true
      var count = 0;
    var winner = 0
    @IBAction func buttonPressed(_ sender: Any) {
        
        let activePosition = (sender as AnyObject).tag! - 1
      
        if gameState[activePosition] == 0 && activeGame{
            
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                (sender as AnyObject).setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
                count += 1
            }
            else{
                (sender as AnyObject).setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
                count += 1
            }
            
            for combination in winningCombination {
                if gameState[combination[0]] != 0 &&
                    gameState[combination[0]] == gameState[combination[1]] &&
                    gameState[combination[1]] == gameState[combination[2]] {
                    //We have a winner
                    activeGame = false
                    
                    winnerLabel.isHidden = false
                    playAgainButton.isHidden = false
                    
                    if gameState[combination[0]] == 1 {
                        winnerLabel.text = "Nought has WON !"
                        winner = 1
                    }
                    else if gameState[combination[0]] == 2{
                        winnerLabel.text = "Cross has WON !"
                        winner = 1
                    }
                    
                    UIView.animate(withDuration: 1, animations: {
                        self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 500, y: self.winnerLabel.center.y)
                        self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                    })
                }
                
            }
        
        }
        
        //print the tag of the button
        print((sender as AnyObject).tag! as Any)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 500, y: winnerLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
        
        
    }


}

