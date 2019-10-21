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
    
    // Calculate the tip 
    @IBAction func calculateTip(_ sender: Any) {


    // Receive information from user
    let billAmountAsString = billAmount.text!
    
    let tipPercentageAsString = billAmount.text!
        
    let peopleCountAsString = peopleCount.text!
        
    
        // Convert String data types to Double
        let billAmountAsDouble = Double(billAmountAsString)!
        
        let tipPercentageAsDouble = Double (tipPercentageAsString)! / 100
        
        let peopleCountAsDouble = Double (peopleCountAsString)!
        
        // Calculate tip in dollars
        let totalTip = billAmountAsDouble * tipPercentageAsDouble
        
        // Calculate tip per person
        let tipPerPerson = totalTip / peopleCountAsDouble
        
        // Display results to the viewer
        totalTipInDollars.text = String(totalTip)
        
        tipPerPersonInDollars.text = String(tipPerPerson)
}

}
