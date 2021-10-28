//
//  HealthEntries.swift.swift
//  HW1
//
//  Created by Hunter Bowman on 10/10/21.
//

import Foundation

class HealthEntries {
    
    var healthEntries: [Date:HealthEntry] = [:]
    
    init() {
    }
    
    func addEntry(date: Date, entry: HealthEntry) {
        self.healthEntries = [date:entry]
    }
    
    func deleteEntry(date: Date) {
        self.healthEntries.removeValue(forKey: date)
    }
    
    func getCount() -> Int {
        return healthEntries.count
    }
    
    func getEntry(entryDate: Date) -> HealthEntry {
        return healthEntries[entryDate]!
    }
    
    
}
