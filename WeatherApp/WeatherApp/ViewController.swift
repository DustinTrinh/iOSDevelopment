//
//  ViewController.swift
//  WeatherApp
//
//  Created by Dustin Trinh on 2018-11-27.
//  Copyright © 2018 DustyTheCutie. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityInput: UITextField!
    
    @IBOutlet weak var cityOutput: UILabel!
    @IBAction func getWeather(_ sender: Any) {
        if let url = URL(string: "https://www.weather-forecast.com/locations/" + cityInput.text!.replacingOccurrences(of: " ", with: "-") + "/forecasts/latest"){
        let request = NSMutableURLRequest(url:url)
        
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            var message = ""
            
            if let error = error {
                print (error)
            }
            else{
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                    
                    var stringSeparator = "Weather Today </h2>(1&ndash;3 days)</span><p class=\"b-forecast__table-description-content\"><span class=\"phrase\">"
                    
                    if let contentArray = dataString?.components(separatedBy: stringSeparator){
                        if contentArray.count > 1 {
                            stringSeparator = "</span>"
                            
                            let newContentArray = contentArray[1].components(separatedBy: stringSeparator)
                            if newContentArray.count > 0 {
                                
                                message = newContentArray[0].replacingOccurrences(of: "&deg;", with: "°")
                                print(message)
                            }
                            
                            
                        }
                    }
                    else{ print ("not gonna display")}
                }
            }
            if message == "" {
                message = "The weather there could not be found. Please try again"
            }
            DispatchQueue.main.sync(execute: {
                self.cityOutput.text = message
            })
            
            
        }
        task.resume()
        }else{
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }
}
