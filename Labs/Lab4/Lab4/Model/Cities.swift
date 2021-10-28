//
//  Cities.swift
//  Lab4
//
//  Created by Hunter Bowman on 9/26/21.
//

import Foundation

class Cities {
    
    var cities: [City] = []
    
    init() {
        
        cities.append(City(name: "Phoenix", imageName: "Phoenix.jpg", description: "Hot"))
        cities.append(City(name: "New York", imageName: "NewYork.jpg", description: "It's Big"))
        cities.append(City(name: "San Francisco", imageName: "SanFrancisco.jpg", description: "Has the Golden Gate bridge"))
        cities.append(City(name: "Portland", imageName: "Portland.jpeg", description: "Odd"))
        cities.append(City(name: "Anchorage", imageName: "Anchorage.jpg", description: "Cold"))
        
    }
    
    func getCount() -> Int {
        return cities.count
    }
    
    func addCity(name:String, imageName:String, description:String) {
        let city = City(name: name, imageName: imageName, description: description)
        cities.append(city)
    }
    
    func getCity(i:Int) -> City {
        return cities[i]
    }
    
    func deleteCity(i:Int) {
        cities.remove(at: i)
    }
    
}
