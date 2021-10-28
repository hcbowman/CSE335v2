//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
///..............Mehods...................///

func foo() {
    print("Hello from foo")
}

foo()

func combine( firstName: String,  lastName: String) -> String {
    return(firstName + lastName)
}

print(combine( firstName: "Janaka",  lastName: "balasooriya"))

// functions Omitting Argument Labels
func combine( _ firstName: String, _ lastName: String) -> String {
    return(firstName + lastName)
}

print(combine( "Janaka", "balasooriya"))



func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
var x = [20, 45, 67, 89, 6]
var minMaxTuple = minMax (array:x)

print(minMaxTuple.max)
print(minMaxTuple.min)

// Objects Example
class person{
    var name:String?
    var age:Int?
    
    init(n:String, a:Int)
    {
      self.name = n
      self.age = a
    }
    
    func setName(n: String) -> String
    {
        self.name = n
        return self.name!
    }
    
    func getPersonInfo() ->(n:String, a:Int)
    {
        return(self.name!, self.age!)
    }
    
    
}

var Jan = person(n:"Janaka", a:34)
print(Jan.age)
print(Jan.getPersonInfo())

// inheritance

class employee:person
{
    var payScale:Double?
    
    init( name:String, age:Int, p:Double)
    {
        super.init(n:name, a: age)
        payScale = p
    }
    
    func getEmpInfo() ->(n:String?, a:Int?, p:Double?)
    {
        return (name, age, payScale)
    }
    
}


var e:employee =  employee(name:"janaka", age:20, p:1000);
print(e.getPersonInfo())
print(e.getEmpInfo())



