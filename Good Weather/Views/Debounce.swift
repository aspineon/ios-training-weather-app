//
//  Debounce.swift
//  Good weather
//
//  Created by Łukasz Andrzejewski on 31/05/2020.
//  Copyright © 2020 Inbright Łukasz Andrzejewski. All rights reserved.
//

import Dispatch

func debounce<T: Equatable>(input: T, comparedAgainst current: @escaping @autoclosure () -> (T), perform: @escaping (T) -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
        if input == current() {
            perform(input)
            
        }
    }
}
