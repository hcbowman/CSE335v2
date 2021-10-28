//
//  ViewController.swift
//  Lab3UIKit
//
//  Created by Hunter Bowman on 9/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    //let dictionary: [String:GameRecord] = [String:GameRecord]()
    let dictionary: GameDictionary = GameDictionary()
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var typeTextField: UITextField!
    @IBOutlet weak var upcomingSeriesTextField: UITextField!
    
    @IBOutlet weak var searchResults: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addRecord(_ sender: Any) {
        
        // check if input fields are empty
        if let name = nameTextField.text,
           let type = typeTextField.text,
           let series = upcomingSeriesTextField.text {
            
            
            
            // create record
            let record =  GameRecord(name, type, series)
            
            dictionary.insert(game: record)
            
            // remove data from the text fields
            self.nameTextField.text = ""
            self.typeTextField.text = ""
            self.upcomingSeriesTextField.text = ""
            
        } else {
            
            // Alert message will be displayed to the user that there is no input
            let alert = UIAlertController(title: "Data Input Error", message: "Data Inputs are either empty or incorrect types", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
    }
    @IBAction func deleteRecord(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Delete Record", message: "", preferredStyle: .alert)
        
        let serachAction = UIAlertAction(title: "Delete", style: .default) { (aciton) in
            
            let text = alertController.textFields!.first!.text!
            
            if !text.isEmpty {
                let name = text
                let game =  self.dictionary.search(game: name)
                if self.dictionary.delete(game: name) {
                    self.searchResults.text = "Deleted game... name:\(game!.name), type:\(game!.type), upcoming series:\(game!.series)"
                } else {
                    self.searchResults.text = "error"
                }
                
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "enter name of game to be deleted"
            textField.keyboardType = .default
        }
        
        alertController.addAction(serachAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func search(_ sender: Any) {
        
        // show the alert controller with data input text field
        let alertController = UIAlertController(title: "Search Record", message: "", preferredStyle: .alert)
        
        let serachAction = UIAlertAction(title: "Search", style: .default) { (aciton) in
            
            let text = alertController.textFields!.first!.text!
            
            if !text.isEmpty {
                let name = text
                let record =  self.dictionary.search(game: name)
                if let game = record {
                    self.searchResults.text = "Found... name:\(game.name), type:\(game.type), upcoming series:\(game.series)"
                }
                
            }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        
        alertController.addTextField { (textField) in
            textField.placeholder = "enter name here"
            textField.keyboardType = .default
        }
        
        alertController.addAction(serachAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    
}

