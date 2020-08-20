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

    @IBAction func tipChanged(_ sender: UIButton) {
        switch sender {
        case zeroPctButton:
            print("Poor")
        case tenPctButton:
            print("Nice")
        case twentyPctButton:
            print("$$$$$")
        default:
            print("Error")
        }
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print("Changed Split")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("Calculate")
    }
    
}

