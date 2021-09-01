//
//  ViewController.swift
//  Activity1Question2
//
//  Created by Hunter Bowman on 8/29/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    
    @IBAction func GreetingButton(_ sender: UIButton) {
        
        let greeting = "\(FirstNameTextField.text ?? "error: Missing first name") \(LastNameTextField.text ?? "error: Missing last name") Welcome to CSE335"
        
        WelcomeLabel.text = greeting
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

struct Person {
    let firstName: String
    let lastName: String
    
    init(firstName first: String, lastName last: String) {
        self.firstName = first
        self.lastName = last
    }
}

