//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    

    var bmi: String?
    var calculator = CalculateBMI()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightDisplay: UISlider!
    @IBOutlet weak var weightDisplay: UISlider!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let text = String(format: "%.2f", Float(sender.value))
        heightLabel.text = String("\(text)m")
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        calculator.calculate(height: heightDisplay.value, weight: weightDisplay.value)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiResult = calculator.getBMI()
            destinationVC.advice = calculator.getAdvice()
            destinationVC.color = calculator.getColor()
            
            
        }
    }
    
    
    
    

}

