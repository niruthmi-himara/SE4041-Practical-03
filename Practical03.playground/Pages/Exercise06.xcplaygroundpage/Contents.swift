import Foundation

// SE4041 – Practical 03
// Exercise 06 – Structures, Computed Properties, Methods, Classes, Value vs Reference

// Struct with memberwise initializer
struct BasicStudent {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let basicStudent = BasicStudent(name: "Amal", mark: 72)
print(basicStudent.name)         // Amal
print(basicStudent.mark)         // 72
print(basicStudent.registered)   // true

// Computed properties
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)   // 12.0

// Computed grade
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct GradedStudent {
    var name: String
    var mark: Int

    var grade: Grade {
        switch mark {
        case 75...100: return .a
        case 65..<75:  return .b
        case 50..<65:  return .c
        default:       return .f
        }
    }
}

let gradedStudent = GradedStudent(name: "Amal", mark: 72)
print(gradedStudent.name)             // Amal
print(gradedStudent.grade.rawValue)   // B

// Methods
struct Student {
    var name: String
    var mark: Int

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let student = Student(name: "Kamal", mark: 75)
student.displayDetails()   // Kamal received 75

// mutating methods
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)   // 2

// Classes
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()   // Nushkan teaches SE4041

// Struct = value type (copy)
struct Point {
    var x = 0
}

let firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99
print(firstPoint.x)    // 0
print(secondPoint.x)   // 99

// Class = reference type (shared)
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99
print(firstCounter.count)    // 99
print(secondCounter.count)   // 99

// ---------------------------------------------------------------
// Knowledge Check
// 1. Functions avoid repetition and make code reusable and readable.
// 2. A parameter is a named input passed into a function.
// 3. -> String means the function returns a String.
// 4. An argument label is the external name used when calling a function.
// 5. A default value is used when the caller omits that argument.
// 6. guard exits early when a required condition fails.
// 7. A tuple groups several values into one compound value.
// 8. filter keeps the elements that satisfy a condition.
// 9. map transforms every element into a new value.
// 10. reduce combines all elements into one value.
// 11. An enum restricts a value to a fixed set of valid cases.
// 12. A raw value is a constant (e.g. String) attached to each enum case.
// 13. A struct is a value type that groups related data and behaviour.
// 14. A stored property holds a value in the instance.
// 15. A computed property calculates its value each time it is accessed.
// 16. mutating is required when a struct method changes its own properties.
// 17. A class is a reference type with properties, methods and initializers.
// 18. Structs are copied (value types); classes are shared (reference types).
