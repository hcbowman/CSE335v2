//
//  ViewController.swift
//  Lab1
//
//  Created by Brooke Bowman on 8/24/21.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var calculatedBMILabel: UILabel!
    @IBOutlet weak var outcomeMessageLabel: UILabel!
    
    @IBAction func CalculateBMIButton(_ sender: Any) {
        
        //let height = Float(heightTextField.text!) ?? 0.0
        //let weight = Float(weightTextField.text!) ?? 0.0
        
        let numberFormatter = NumberFormatter()
        let h = numberFormatter.number(from: heightTextField.text!)
        let height = h?.floatValue ?? -1
        
        let w = numberFormatter.number(from: weightTextField.text!)
        let weight = w?.floatValue ?? -1
        
        let person = Person(height: height, weight: weight)
        
        
        calculatedBMILabel.text = "\(person.bmi)"
        
        outcomeMessageLabel.text = "You are \(person.getBMIClass())..."
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

