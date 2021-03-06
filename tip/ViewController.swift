//
//  ViewController.swift
//  tip
//
//  Created by jar on 12/5/20.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var slideAmount: UISlider!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get initial bill amount and calculate tip
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.0,0.15, 0.2, 0.25]
        
        let slider = Double(slideAmount.value)
        
        // Calculate tip and total
        var tip =  bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        
        if (slider != 0){
            tip = Double(slideAmount.value) * bill
        }
        
        let total = bill + tip
        
        // Update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

