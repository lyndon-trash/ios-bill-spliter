//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by StartupBuilder.INFO on 8/20/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var tip: Tip?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let safeTip = tip {
            totalLabel.text = String(format: "%.2f", safeTip.value)
            settingsLabel.text = "Split between \(safeTip.split) people with \(safeTip.percent.display) tip."
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
