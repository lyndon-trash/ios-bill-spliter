//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var calculator = TipCalculator()

    @IBAction func tipChanged(_ sender: UIButton) {
        if zeroPctButton == sender {
            calculator.tipPercent = .zero
        } else if tenPctButton == sender {
            calculator.tipPercent = .ten
        } else if twentyPctButton == sender {
            calculator.tipPercent = .twenty
        }
        
        clearTipSelections()
        sender.isSelected = true
        dismissKeyboard()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        calculator.split = Int(sender.value)
        dismissKeyboard()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let resultVC: ResultsViewController = segue.destination as? ResultsViewController {
            let amtStr: String = billTextField.text ?? "0.0"
            calculator.transactionAmount = Float(amtStr) ?? 0.0
            resultVC.tip = calculator.calculate()
        }
    }
    
    func clearTipSelections() {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

