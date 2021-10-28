//
//  RiskViewController.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import UIKit

class RiskViewController: UIViewController {
    
    var healthEntries: HealthEntries = HealthEntries()

    @IBOutlet weak var risk: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func calculateRisk() -> String {
        
        let today = healthEntries.getEntry(entryDate: Date())
        //let yesterday = healthEntries.getEntry(entryDate: Da)
        
        
        var risk = ""
        
        if false {
            //risk += " Your sugar level is high! "
        }
        
        if false {
            //risk += "You are gaining weight!"
        }
        
        if false {
            //risk += "our blood pressure is high!"
        }
        
        if false {
            //risk += "You are in good health, keep up the good work"
        }
        
        return risk
    }
    

}

/*
 is determined using three indicators as follows
 o If the average weight of last four days of the week is higher than the average weight of the first three days of the week, the app will show a warning sign to the user indicating (“You are gaining weight!”)
 o If the current sugar level is 10% higher than the previous day, the app will show a warning sign to the user indicating (“Your sugar level is high!”)
 o If the current blood pressure (systolic, diastolic, or both) level is 10% higher than the previous day, the app will show a warning sign to the user indicating, (“Your blood pressure is high!”)
 o If none of the above, the app will show the message “You are in good health, keep up the good work” with happy face
 */
