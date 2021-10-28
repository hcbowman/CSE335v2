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

// Structs

struct Resolution {
    var width = 0
    var height = 0
}

var hd = Resolution(width: 1920, height: 1080)
var cinema = hd

hd.height = 100;
print(cinema)
print(hd)


class Res {
    var width = 0
    var height = 0
    
    init(w:Int, h:Int)
    {
        width = w;
        height = h;
    }
}

var hdr = Res(w:1920, h:1080)
var cinemar = hdr

hdr.height = 100;
print(cinemar.height)
print(hdr.height)

hd.height = 100;
print(cinema)
print(hd)

//Struct vs Classes
// classes are references

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print(tenEighty.frameRate)
print(alsoTenEighty.frameRate)



