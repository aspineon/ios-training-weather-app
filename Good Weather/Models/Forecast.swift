//
//  Forecast.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 01/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

struct Forecast: Codable {
    
    let pressure: Double
    let humidity: Int
    let description: [Description]
    let temperature: Temperature
    let date: Int
    
    enum CodingKeys: String, CodingKey {
        
        case pressure
        case humidity
        case description = "weather"
        case temperature = "temp"
        case date = "dt"
        
    }
    
}
