//
//  WeatherViewController.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 01/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    let weatherService: WeatherService = URLSessionWeatherService()
    let cityKey = "city"
    
    var weather: Weather?
    //var lastCity = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(ForecastViewModel(icon: "", description: "Loading...", temperature: "", pressure: "", date: ""))
        let city = UserDefaults.standard.string(forKey: cityKey) ?? "warsaw"
        cityTextField.text = city
        refreshWeather(for: city)
    }
    
    @IBAction func onCityEntered(_ sender: UIButton) {
        if let city = cityTextField.text {
            refreshWeather(for: city)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "weatherDetails" {
            if let weatherDetailsViewController = segue.destination as? WeatherDetailsViewController {
                weatherDetailsViewController.weather = weather
            }
        }
    }
    
    private func refreshWeather(for city: String) {
        weatherService.getWeather(for: city) { weather in
            self.view.endEditing(true)
            self.on(weather: weather)
            UserDefaults.standard.set(city, forKey: self.cityKey)
        }
    }
    
    private func on(weather: Weather?) {
        guard let forecast = weather?.forecast.first else {
            return
        }
        self.weather = weather
        updateView(ForecastViewModel(forecast))
    }
    
    private func updateView(_ forecastViewModel: ForecastViewModel) {
        iconLabel.text = forecastViewModel.icon
        descriptionLabel.text = forecastViewModel.description
        temperatureLabel.text = forecastViewModel.temperature
        pressureLabel.text = forecastViewModel.pressure
    }
    
    /*
    @IBAction func onCityChanged(_ sender: UITextField) {
        if let city = sender.text {
            debounce(input: city, comparedAgainst: self.lastCity) { _ in
                self.refreshWeather(for: city)
            }
            lastCity = city
        }
    }
    */
    
}
