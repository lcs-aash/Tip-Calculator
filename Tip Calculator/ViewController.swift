//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ash, Aurora on 2019-10-10.
//  Copyright © 2019 Rori Ash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Mark: Properties (Outlets)(Constants)
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var tipPercentage: UITextField!
    
    @IBOutlet weak var peopleCount: UITextField!
    
    @IBOutlet weak var totalTipInDollars: UILabel!
    
    @IBOutlet weak var tipPerPersonInDollars: UILabel!
    


    // Mark: Methods (functions)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        
    }
    
    // Calculate the tip and report results
    @IBAction func calculateTip(_ sender: Any) {


    // Get the user input
    let billAmountAsString = billAmount.text!
    
    let tipPercentageAsString = billAmount.text!
        
    let peopleCountAsString = peopleCount.text!
        
    
        // Convert all data values to double data type
        let billAmountAsDouble = Double(billAmountAsString)!
        
        let tipPercentageAsDouble = Double (tipPercentageAsString)! / 100
        
        let peopleCountAsDouble = Double (peopleCountAsString)!
        
        // Calculate tip in dollars
        let totalTip = billAmountAsDouble * tipPercentageAsDouble
        
        // Calculate tip per person
        let tipPerPerson = totalTip / peopleCountAsDouble
        
        // Send the results to the view
        totalTipInDollars.text = String(totalTip)
        
        tipPerPersonInDollars.text = String(tipPerPerson)
}

}
