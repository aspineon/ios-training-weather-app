//
//  WeatherService.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 01/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

protocol WeatherService {
    
    func getWeather(for city: String, callback: @escaping (Weather?) -> Void)
    
}
