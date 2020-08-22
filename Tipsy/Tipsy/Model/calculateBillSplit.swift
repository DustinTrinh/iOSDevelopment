//
//  calculateBillSplit.swift
//  Tipsy
//
//  Created by Dustin Trinh on 2020-08-21.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

struct calculateBillSplit{
    var amount: Float
    var tip: Float
    var people: Int
    
    init(amount: Float, tip: Float, people: Int){
        self.amount = amount
        self.tip = tip
        self.people = people
    }
    
    func calculate() -> String{
        let result = (amount + (amount * (tip/100))) / Float(people)
        let re = String(format: "%.2f", result)
        
        return re
    }
}
