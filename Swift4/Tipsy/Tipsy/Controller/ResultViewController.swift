//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Dustin Trinh on 2020-08-22.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var ppl: String?
    var tip: Float?
    var amount: String?
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var desciption: UILabel!
    @IBOutlet weak var amountDisplay: UILabel!
    override func viewDidLoad() {
        amountDisplay.text = amount
        desciption.text = "Split between \(ppl!) people, with \(tip!)% tip"
        
        
    }
    
    
}
