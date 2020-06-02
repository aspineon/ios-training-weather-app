//
//  ForecastTableViewCell.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var forecastView: ForecastView!
    
    func update(_ forecastViewModel: ForecastViewModel) {
        iconLabel.text = forecastViewModel.icon
        temperatureLabel.text = forecastViewModel.temperature
        pressureLabel.text = forecastViewModel.pressure
        dateLabel.text = forecastViewModel.date
        forecastView.update(forecastViewModel)
    }
    
}
