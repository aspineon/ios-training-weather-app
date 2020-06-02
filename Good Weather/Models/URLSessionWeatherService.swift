//
//  URLSessionWeatherService.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import Foundation

class URLSessionWeatherService: WeatherService {
    
    private let apiUrl = "https://api.openweathermap.org/data/2.5/forecast/daily?cnt=7&units=metric&APPID=b933866e6489f58987b2898c89f542b8&q="
   
    func getWeather(forCity city: String, onComplete handler: @escaping (Weather?) -> Void) {
        guard let url = URL(string: "\(apiUrl)\(city)") else {
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let jsonData = data {
                let result = try? JSONDecoder().decode(Weather.self, from: jsonData)
                DispatchQueue.main.async {
                    handler(result)
                }
            }
        }.resume()
    }
    
}
