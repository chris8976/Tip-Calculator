//
//  ViewController.swift
//  Tip Calculator
//
//  Created by 6f on 3/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipOptions: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var totalCost: UILabel!
    
    @IBOutlet weak var dinnercost: UITextField!
    @IBAction func resetButton(_ sender: Any) {
        dinnercost.text = ""
        totalCost.text = "$0.00"
        
        
    }
    
    
    
    @IBAction func calculate(_ sender: Any) {
        var total = 0.0
        if tipOptions.selectedSegmentIndex == 0
        {
            total = (Double(dinnercost.text!) ?? 0) + (Double(dinnercost.text!) ?? 0) * 0.15
        }
        if tipOptions.selectedSegmentIndex == 1
        {
            total = (Double(dinnercost.text!) ?? 0) + (Double(dinnercost.text!) ?? 0) * 0.18
        }
        if tipOptions.selectedSegmentIndex == 2
        {
            total = (Double(dinnercost.text!) ?? 0) + (Double(dinnercost.text!) ?? 0) * 0.20
        }
        totalCost.text = "$ \(String(total))"
    }
    
    @IBOutlet weak var Control: UISegmentedControl!
}

