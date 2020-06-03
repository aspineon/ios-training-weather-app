//
//  DescriptionView.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 02/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import UIKit

@IBDesignable
class DescriptionView: UIView {
    
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
        let bundle = Bundle(for: DescriptionView.self)
        let nib = UINib(nibName: "DescriptionView", bundle: bundle)
        let view = nib.instantiate(withOwner: self).first as! UIView
        view.frame = bounds
        addSubview(view)
    }
    
    func update(_ text: String) {
        descriptionLabel.text = text
    }
    
}
