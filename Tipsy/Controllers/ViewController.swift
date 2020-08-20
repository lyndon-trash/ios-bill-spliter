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
    
    var split = 2

    @IBAction func tipChanged(_ sender: UIButton) {
        clearTipSelections()
        sender.isSelected = true
        dismissKeyboard()
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        split = Int(sender.value)
        dismissKeyboard()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("Split: \(split)")
        if zeroPctButton.isSelected {
            print("0%")
        } else if tenPctButton.isSelected {
            print("10%")
        } else if twentyPctButton.isSelected {
            print("20%")
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

