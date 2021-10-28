//
//  ViewController.swift
//  alertControllerExample
//
//  Created by Janaka Balasooriya on 9/12/19.
//  Copyright © 2019 Janaka Balasooriya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert1(_ sender: Any) {
        var alert1 = UIAlertController(title: "One Text Field", message: "", preferredStyle: .alert)
        
        let dataInputAction = UIAlertAction(title: "Ok", style: .default) { (aciton) in
            
            let textField = alert1.textFields![0] as UITextField
            
            if let x = textField.text{
                print(textField.text)
                
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (aciton) in
            
        }
        
        alert1.addTextField { (textField) in
            textField.placeholder = "name"
        }
        
        
        alert1.addAction(dataInputAction)
        alert1.addAction(cancelAction)
        
        self.present(alert1, animated: true, completion: nil)

        
    }
    
    @IBAction func showAlert2(_ sender: Any) {
        
        
        let alert2 = UIAlertController(title: "Search Record", message: "", preferredStyle: .alert)
        
        let serachAction = UIAlertAction(title: "Ok", style: .default) { (aciton) in
            
            let firstTextField = alert2.textFields![0] as UITextField
            let secondTextField = alert2.textFields![1] as UITextField
            
            if let x = firstTextField.text, let y =  secondTextField.text {
                print(firstTextField.text)
                print(secondTextField.text)
                
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        alert2.addTextField { (textField) in
            textField.placeholder = "name"
        }
        
        alert2.addTextField { (textField) in
            textField.placeholder = "age"
            textField.keyboardType = .decimalPad
        }
        
        alert2.addAction(serachAction)
        alert2.addAction(cancelAction)
        
        self.present(alert2, animated: true, completion: nil)
    }
    
    @IBAction func showAlert3(_ sender: Any) {
        
        var alert3 = UIAlertController(title: "Action Sheet", message: "", preferredStyle: .actionSheet)
        
        let dataInputAction = UIAlertAction(title: "Ok", style: .default) { (aciton) in
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .default) { (aciton) in
            
        }
        
        alert3.addAction(dataInputAction)
        alert3.addAction(cancelAction)
        
        self.present(alert3, animated: true, completion: nil)
    }
    
}

