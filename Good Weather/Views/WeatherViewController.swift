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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionLabel.text = "Loading..."
    }

    @IBAction func onShowDetails(_ sender: UIButton) {
        print("Test")
    }
    
}
