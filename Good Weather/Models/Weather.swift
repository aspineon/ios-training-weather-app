//
//  Weather.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 01/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

struct Weather: Codable {
    
    let city: City
    let forecast: [Forecast]
    
    enum CodingKeys: String, CodingKey {
      
        case city
        case forecast = "list"
        
    }
    
}
