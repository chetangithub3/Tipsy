//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var selectedTipValue: Float = 0.1
    var numberOfPeople: Int = 2
    var billTotal: Float = 0.0
    var finalSplit: Float = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        deselectTipButtons()
        sender.isSelected = true
        if sender.currentTitle == "10%"{
            selectedTipValue = 0.1
        }else if sender.currentTitle == "0%"{
            selectedTipValue = 0.0
        }else{
            selectedTipValue = 0.2
        }
        
    }
    func deselectTipButtons(){
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        billTextField.endEditing(true)
        numberOfPeople = Int(sender.value)
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTextField.endEditing(true)
        print(billTextField.text ?? "Error")
        print(selectedTipValue)
        
        billTotal = Float(billTextField.text!) ?? 0.0
        finalSplit = Float(billTotal + billTotal*selectedTipValue)/Float(numberOfPeople)
        print(finalSplit)
        
        performSegue(withIdentifier: "toResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"{
            let destinationVC = segue.destination as! ResultsViewController?
            destinationVC?.splitValue = finalSplit
            destinationVC?.numberOfPeople = numberOfPeople
            destinationVC?.tipPercent = selectedTipValue * 100
        }
    }
    
}

