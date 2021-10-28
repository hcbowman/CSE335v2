//
//  ViewController.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var healthEntries: HealthEntries = HealthEntries()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destination.
        /*if (segue.identifier == "EntryViewController") {
            if let viewController: EntryViewController = segue.destination as? EntryViewController {
                viewController.healthEntries = healthEntries
            }
            
        }*/
        
        switch segue.identifier {
        case "EntryViewController":
            if let viewController: EntryViewController = segue.destination as? EntryViewController {
                viewController.healthEntries = healthEntries
            }
        case "SceneViewController":
            if let viewController: EntryViewController = segue.destination as? EntryViewController {
                viewController.healthEntries = healthEntries
            }
        case "SummaryViewController":
            if let viewController: EntryViewController = segue.destination as? EntryViewController {
                viewController.healthEntries = healthEntries
            }
        default:
            break
            
        }
    }


}

