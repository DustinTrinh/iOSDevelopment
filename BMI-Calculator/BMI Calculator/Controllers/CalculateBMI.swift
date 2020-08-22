//
//  CalculateBMI.swift
//  BMI Calculator
//
//  Created by Dustin Trinh on 2020-08-21.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBMI{
    
    var bmi: BMI?
    mutating func calculate(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit and Healthy", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less, More Exercise", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.green
    }
    
    func getAdvice() -> String{
        return (bmi?.advice ?? "No Advice")
    }
    
    func getBMI() -> String {
        
        let re: String = String(format: "%.1f", bmi?.value ?? 0.0)
        return re
    }
    
}
