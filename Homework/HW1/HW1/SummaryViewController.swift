//
//  SummaryViewController.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import UIKit

class SummaryViewController: UITableViewController {
    
    var healthEntries: HealthEntries = HealthEntries()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return healthEntries.healthEntries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMddyy"
        
        //let date = Date()
        //let calendar = Calendar.current
        //let components = calendar.dateComponents([.weekday], from: date)
        //let dayOfWeek = components.weekday
        
        let date = Date()
        var dateComponents = Calendar.current.dateComponents([.hour, .minute, .second], from: date)

        dateComponents.day = indexPath.row+1

        let entryDate = Calendar.current.date(from: dateComponents)!
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "entryCell", for: indexPath) as! EntryTableViewCell
        
        cell.layer.borderWidth = 1.0
        
        // Get items
        let entry = healthEntries.getEntry(entryDate: entryDate)
        
        cell.dateLabel.text = dateFormatter.string(from: date)
        cell.weightLabel.text = String(entry.weight)
        cell.systolicLabel.text = String(entry.pressureSystolic)
        cell.diastolicLabel.text = String(entry.pressureDiastolic)
        cell.sugarLabel.text = String(entry.sugarLevel)
        
        
        return cell
    }

}
