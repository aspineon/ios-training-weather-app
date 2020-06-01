//
//  Description.swift
//  Good Weather
//
//  Created by Łukasz Andrzejewski on 01/06/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

struct Description: Codable {
    
    let text: String
    let icon: String
    
    enum CodingKeys: String, CodingKey {
       
        case text = "description"
        case icon
        
    }
    
}
