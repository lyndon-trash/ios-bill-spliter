//
//  TipCalculator.swift
//  Tipsy
//
//  Created by StartupBuilder.INFO on 8/21/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

class TipCalculator {
    
    var tipPercent: Pct = .ten
    var transactionAmount: Float = 0.0
    var split = 2
    
    func calculate() -> Tip {
        var amt: Float = 0.0
        if transactionAmount > 0 && tipPercent == .ten {
            amt = transactionAmount * 0.1 / Float(split)
        } else if transactionAmount > 0 && tipPercent == .twenty {
            amt = transactionAmount * 0.2 / Float(split)
        }
        
        return Tip(value: amt, split: split, percent: tipPercent)
    }
    
}

struct Tip {
    let value: Float
    let split: Int
    let percent: Pct
}

enum Pct {
    case ten,  twenty, zero
    
    var display: String {
        get {
            switch self {
            case .ten:
                return "10%"
            case .twenty:
                return "20%"
            default:
                return "0%"
            }
        }
    }
}
