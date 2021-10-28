//
//  Data.swift
//  Lab1
//
//  Created by Brooke Bowman on 8/24/21.
//

import Foundation

class Person {
    
    //enum BMIClass {
    //    case underweight, normal, preobese, obese
    //}
    
    let height: Float
    let weight: Float
    let bmi: Float
    //let bmiClass: BMIClass
    
    init(height: Float, weight: Float) {
        self.height = height
        self.weight = weight
        
        self.bmi = (weight/(height*height))*703.0
        
    }
    
    func getBMIClass() -> String {
        switch self.bmi {
        case 0.0..<18.0:
            return "underweight"
        case 18.0..<25.0:
            return "normal"
        case 25.0..<30.0:
            return "preobese"
        case 30.0..<100.0:
            return "obese"
        default:
            return "*Error enter Value*"
        }
    }
    
}
