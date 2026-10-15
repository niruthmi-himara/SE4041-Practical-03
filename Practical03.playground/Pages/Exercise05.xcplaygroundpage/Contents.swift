import Foundation

// SE4041 – Practical 03
// Exercise 05 – Enumerations

enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
direction = .south
print(direction)   // south

// Enum with switch
enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered

switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}

// Raw values
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)   // B

// Activity 6
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let se4041Status = ModuleStatus.inProgress
print(se4041Status.rawValue)   // In Progress
