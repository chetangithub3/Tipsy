//
//  TipsyBrain.swift
//  Tipsy
//
//  Created by Chetan Dhowlaghar on 3/12/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct TipsyBrain{
    
    var tipsy: Tipsy?
    var result: Float?
    
    
    
    mutating func calculateResultSplit(billTotal: Float, selectedTip: Float, numberOfPeople: Int){
        
        tipsy = Tipsy(billTotal: billTotal, selectedTip: selectedTip, numberOfPeople: numberOfPeople)
        print(tipsy)
        result = Float(tipsy!.billTotal + tipsy!.billTotal*tipsy!.selectedTip)/Float(tipsy!.numberOfPeople)
        print(result)
    }
    
    func getResultSplit() -> Float{
        return result!
    }
    
    func getResultSettingText(tipsy: Tipsy) -> String{
        let resultSetingText = "Split between \(tipsy.numberOfPeople) people, with 10\(tipsy.selectedTip*100)% tip."
        return resultSetingText
    }
    
    
    
}
