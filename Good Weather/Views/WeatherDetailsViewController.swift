//
//  WeatherDetailsViewController.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import UIKit

class WeatherDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var forecastTableView: UITableView!
    
    var weather: Weather?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather?.forecast.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "forecastCell") as! ForecastTableViewCell
        if let forecast = weather?.forecast[indexPath.row] {
            let forecastViewModel = ForecastViewModel(forecast)
            //cell.textLabel?.text = forecastViewModel.description
            //cell.detailTextLabel?.text = forecastViewModel.temperature
            cell.update(forecastViewModel)
        }
        return cell
    }
    
}
