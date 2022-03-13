//
//  Tipsy.swift
//  Tipsy
//
//  Created by Chetan Dhowlaghar on 3/12/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct Tipsy{
    let billTotal: Float
    let selectedTip: Float
    let numberOfPeople: Int
    
    func getBillTotal() -> Float{
        return billTotal
    }
    
    func getSelectedTip() -> Float{
        return selectedTip
    }
    func getNumberOfPeople() -> Int{
        return numberOfPeople
    }
}
