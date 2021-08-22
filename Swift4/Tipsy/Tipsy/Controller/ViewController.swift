//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tip: Float = 0.0
    var finalValue: String = ""
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var amountInput: UITextField!
    
    @IBOutlet weak var zeroPercentage: UIButton!
    @IBOutlet weak var tenPercentage: UIButton!
    @IBOutlet weak var twentyPercentage: UIButton!
    @IBAction func peopleStepper(_ sender: UIStepper) {
        peopleLabel.text = String(Int(sender.value))
    }
    @IBAction func tipsPercentage(_ sender: UIButton) {
        zeroPercentage.isSelected = false
        tenPercentage.isSelected = false
        twentyPercentage.isSelected = false
        sender.isSelected = true
        
        if sender.currentTitle == "0%"{
            tip = 0
        }
        else if sender.currentTitle == "10%"{
            tip = 10
        }
        else{
            tip = 20
        }
    }
    
    @IBAction func calculateSplit(_ sender: UIButton) {
        let ppl = Int(peopleLabel.text!)!
        let amount = Float(amountInput.text ?? "0")
        var cal = calculateBillSplit(amount: amount!, tip: tip, people: ppl)
        finalValue = cal.calculate()
        print(finalValue)
        performSegue(withIdentifier: "showResult", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.amount = finalValue
            resultVC.ppl = peopleLabel.text
            resultVC.tip = tip
            
        }
    }

}

