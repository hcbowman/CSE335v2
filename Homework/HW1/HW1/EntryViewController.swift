//
//  EntryViewController.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var systolicTextField: UITextField!
    @IBOutlet weak var diastolicTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var sugarTextField: UITextField!
    @IBOutlet weak var otherTextView: UITextView!
    
    @IBOutlet weak var enteryAvailableLabel: UILabel!
    
    var healthEntries: HealthEntries = HealthEntries()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func enterButton(_ sender: Any) {
        
        let entry = HealthEntry()
        entry.pressureSystolic = Int(systolicTextField.text!)!
        entry.pressureDiastolic = Int(diastolicTextField.text!)!
        entry.weight = Double(weightTextField.text!)!
        entry.sugarLevel = Double(sugarTextField.text!)!
        entry.otherSymptoms = otherTextView.text
        
        let date = datePicker.date
        
        healthEntries.addEntry(date: date, entry: entry)
        
        
    }
    

}
