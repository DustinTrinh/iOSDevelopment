//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    var quizLogic = QuizLogic()

    
   
    @IBAction func ansButton(_ sender: UIButton) {
        if quizLogic.checkAns(userAns: sender.currentTitle!){
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        if quizLogic.countProcess(){
            trueButton.isEnabled = false
            falseButton.isEnabled = false
            questionLabel.text = "You are Finished with Final Score: \(quizLogic.score) / \(quizLogic.quiz.count)"
        }
        else{
            Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(changeQuestions), userInfo: nil, repeats: false)
        }
        
        
    }
    
    @objc func changeQuestions(){
        questionLabel.text = quizLogic.getQuestions()
        progressBar.progress = quizLogic.getProgress()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeQuestions()
        
    }


}

