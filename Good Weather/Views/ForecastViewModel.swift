//
//  ForecastViewModel.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import Foundation

struct ForecastViewModel {
    
    let icon: String
    let description: String
    let temperature: String
    let pressure: String
    let date: String
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMMM"
        return dateFormatter
    }()
    
}

extension ForecastViewModel {
    
    init(_ forecast: Forecast) {
        let iconMapper = IconMapper()
        let forecastDescription = forecast.description.first
        description = forecastDescription?.text ?? ""
        temperature = "\(forecast.temperature.day)°"
        pressure = "\(forecast.pressure) hPa"
        icon = iconMapper.map(icon: forecastDescription?.icon ?? "")
        date = dateFormatter.string(from: Date(timeIntervalSince1970: forecast.date))
    }

}
