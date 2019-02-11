import UIKit

var str = "Hello, playground"
struct Point {
    var x = 0.0 , y = 0.0
}
struct Size {
    var width = 0.0 , height = 0.0
}
struct Rect {
     var origin = Point()
     var size = Size()
    var center : Point {
         get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 4,y: 5), size: Size(width: 3, height: 3))
let initialSquareCenter = square.center
square.center = Point(x: 5, y: 5)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")
print("initialSquareCenter is now at (\(initialSquareCenter)")
//property observers
class StepCounter {
    var totalSteps : Int = 10 {
        willSet {
            print("newValue\(newValue)")
        }
        didSet(valueToshow){
            print(valueToshow)
            totalSteps = 50
        }
    }
}
let stepCounter = StepCounter()
stepCounter.totalSteps = 3
stepCounter.totalSteps = 4
//type prperities
class SomeClass {
    static var storedProperties = "stored"
    static var computedProperty : String {
        return ""
    }
    class var overrideableComputedProperty : Int {
        return 0
    }
}
