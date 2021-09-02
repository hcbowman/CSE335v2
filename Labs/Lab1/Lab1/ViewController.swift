//
//  ViewController.swift
//  Lab1
//
//  Created by Brooke Bowman on 8/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let index: Int
    
    var titleLabel: UILabel!
    var heightLabel: UILabel!
    var heightTextField: UITextField!
    var weightLabel: UILabel!
    var weightTextField: UITextField!
    var bmiLabel: UILabel!
    var bmiOutputLabel: UILabel!
    var messageLabel: UILabel!
    var calculateBMIButton: UIButton!
    
    init?(index: Int ,coder: NSCoder) {
        self.index = index
        super.init(coder: coder)
    }
    
    @available(*, unavailable, renamed: "init(index:coder:)")
    required init?(coder: NSCoder) {
        fatalError("Use `init()` to initialize a ViewController instance.")
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view = UIView()
        view.backgroundColor = .white
        
        titleLabel = UILabel()
        titleLabel.text = "BMI Calculator"
        
        // Height label and entry box
        heightLabel = UILabel()
        heightLabel.text = "Height"
        
        heightTextField = UITextField()
        heightTextField.placeholder = "in inches..."
        
        // Weight label and entry box
        weightLabel = UILabel()
        weightLabel.text = "Weight"
        
        weightTextField = UITextField()
        weightTextField.placeholder = "in pounds"
        
        // BMI
        bmiLabel = UILabel()
        bmiLabel.text = "BMI"
        
        bmiOutputLabel = UILabel()
        bmiOutputLabel.text = "0"
        
        messageLabel = UILabel()
        messageLabel.text = "You are ..."
        
        // Calculate button
        calculateBMIButton = UIButton(type: .system)
        calculateBMIButton.setTitle("Calculate", for: .normal)
        
        
        
    }


}

