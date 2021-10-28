//
//  converterModel.swift
//  unitConverter
//
//  Created by user on 9/1/15.
//  Copyright (c) 2015 ASU. All rights reserved.
//

// Converter Model that performs type conversion

import Foundation

class convModel
{
    let DIST_CONV=0, WEIGHT_CONV=1, VOLUME_CONV=2
    
    
    func convert(_ unitType: Int, ToFrom: Int , value:Double ) -> Double  {
        var convertedValue:  Double = 10.0
        switch unitType  {
            
        case DIST_CONV:
            
            if ToFrom == 0 {
               
                var mile: Double
                mile = value * 0.62
                convertedValue = mile
               
            } else
            {
             
                var kilo: Double
                kilo = value / 0.62
                convertedValue = kilo
                
                
            }
        case WEIGHT_CONV:
            
            if ToFrom == 0 {
            
                var pound: Double
                pound = value / 2.2
                 convertedValue = pound
                
            } else
            {
         
                var kilo: Double
                kilo = value * 2.2
                convertedValue = kilo
                
            }
            
            
        case VOLUME_CONV:
            if ToFrom == 0 {
              
                var galon: Double
                galon = value * 3.78
                 convertedValue = galon
            } else
            {
         
                var liter: Double
                liter = value / 3.78
               convertedValue = liter
                
            }
            
            
            
        default :
            print("invalid")
        }

        
        
        
        return convertedValue;
    }
    
}
