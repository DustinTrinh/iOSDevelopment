//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {

    

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    @IBAction func currentLocation(_ sender: UIButton) {
        locationManager.requestLocation()
    }
    @IBOutlet weak var searchTextInput: UITextField!
    
    @IBAction func searchCity(_ sender: UIButton) {
        searchTextInput.endEditing(true)
        print(searchTextInput.text!)
    }
    
    var weatherManager = WeatherManager()
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestLocation()
        
        
        
        weatherManager.delegate = self
        searchTextInput.delegate = self
    }

}

//MARK: - UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextInput.endEditing(true)
        print(searchTextInput.text!)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }
        else{
            textField.placeholder = "Please input a city"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        if let city = searchTextInput.text {
            weatherManager.fetchWeather(cityName: city)
        }
        
        searchTextInput.text = ""
    }
}

extension WeatherViewController: WeatherManagerDelegate{
    
    func didUpdateWeather(_ weatherManager: WeatherManager , weather: WeatherModel){
        DispatchQueue.main.async {
            self.temperatureLabel.text = weather.temperatureString
            self.cityLabel.text = weather.cityName
            self.conditionImageView.image = UIImage(systemName: weather.conditionName)
            self.cityLabel.text = weather.cityName
        }
        
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

extension WeatherViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print("\(lat) \(lon)")
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}
