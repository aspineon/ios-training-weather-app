//
//  ForecastView.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import UIKit

@IBDesignable
class ForecastView: UIView {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }
    
    func loadView() {
        let bundle = Bundle(for: ForecastView.self)
        let nib = UINib(nibName: "ForecastView", bundle: bundle)
        let view = nib.instantiate(withOwner: self).first as! UIView
        view.frame = bounds
        addSubview(view)
    }
    
    func update(_ forecastViewModel: ForecastViewModel) {
        descriptionLabel.text = forecastViewModel.description
    }
    
}
