import Foundation

// SE4041 – Practical 03
// Exercise 01 – Functions, Return Values, Argument Labels, Default Parameters

// Step 1 – A simple function
func greet() {
    print("Welcome to SE4041")
}
greet()

// Step 2 – Function with a parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}
greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a value
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}
let gradeResult = grade(for: 68)
print(gradeResult)   // Pass

// Activity 1
func calculateAverage(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3
}
let averageResult = calculateAverage(75, 82, 68)
print(averageResult)   // 75.0

// Argument labels
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}
travel(from: "Malabe", to: "Kandy")

// Removing an argument label
func double(_ number: Int) -> Int {
    return number * 2
}
print(double(10))   // 20

// Default parameter values
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}
print(result(68))                 // Pass
print(result(68, passMark: 75))   // Fail

// Activity 2
func finalResult(mark: Int, passMark: Int = 50) -> String {
    return mark >= passMark ? "Pass" : "Fail"
}
print(finalResult(mark: 45))                 // Fail
print(finalResult(mark: 75))                 // Pass
print(finalResult(mark: 75, passMark: 80))   // Fail
