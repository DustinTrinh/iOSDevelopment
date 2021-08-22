//
//  ResultController.swift
//  BMI Calculator
//
//  Created by Dustin Trinh on 2020-08-21.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiResult: String?
    @IBOutlet weak var bmiValue: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    var color: UIColor?
    var advice: String?
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValue.text = bmiResult
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
