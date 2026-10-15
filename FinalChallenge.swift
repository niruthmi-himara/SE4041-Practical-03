// SE4041 – Practical 03
// Final Practical Task – Student Management System

// Part A – Grade enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B – Student struct
struct Student {
    let studentID: String
    var name: String
    var mark: Int

    // Part C – Computed grade
    var grade: Grade {
        switch mark {
        case 80...100: return .a
        case 75..<80:  return .aMinus
        case 70..<75:  return .bPlus
        case 65..<70:  return .b
        case 60..<65:  return .bMinus
        case 55..<60:  return .cPlus
        case 45..<55:  return .c
        case 40..<45:  return .cMinus
        default:       return .f
        }
    }

    // Part D – Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("")
    }
}

// Part E – Create students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

print("================================")
print("  STUDENT MANAGEMENT SYSTEM")
print("================================")
print("")

// Part F – Display students
for student in students {
    student.displayDetails()
}

// Part G – filter
let passedStudents = students.filter { $0.mark >= 50 }
print("Passed Students:")
for student in passedStudents {
    print("- \(student.name)")
}
print("")

// Part H – map
let studentNames = students.map { $0.name }
print("Student Names: \(studentNames)")
print("")

// Part I – reduce and average
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")   // 62.6
print("")

// ---------------------------------------------------------------
// Additional Challenge

// 1. guard let validation
func validateStudent(name: String?, mark: Int?) {
    guard let name = name, !name.isEmpty else {
        print("Invalid: name is missing or empty")
        return
    }
    guard let mark = mark, (0...100).contains(mark) else {
        print("Invalid: mark is missing or outside 0...100")
        return
    }
    print("Valid student: \(name) – \(mark)")
}
validateStudent(name: "Kamal", mark: 75)
validateStudent(name: "", mark: 75)
validateStudent(name: "Kamal", mark: 120)
validateStudent(name: nil, mark: nil)
print("")

// 2. Tuple summary (returns nil for an empty array, so it never crashes)
func summarize(_ students: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !students.isEmpty else { return nil }
    let marks = students.map { $0.mark }
    let total = marks.reduce(0, +)
    return (marks.min()!, marks.max()!, Double(total) / Double(marks.count))
}

if let summary = summarize(students) {
    print("Min: \(summary.minimum), Max: \(summary.maximum), Average: \(summary.average)")
}
if summarize([]) == nil {
    print("No students to summarize")
}
print("")

// 3. Value vs reference
var original = Student(studentID: "IT006", name: "Dilan", mark: 60)
var copy = original          // struct -> independent copy
copy.mark = 85
print("Struct original mark: \(original.mark)")   // 60
print("Struct copy mark: \(copy.mark)")           // 85

class StudentRecord {
    var mark: Int
    init(mark: Int) { self.mark = mark }
}

let recordA = StudentRecord(mark: 60)
let recordB = recordA        // class -> same shared object
recordB.mark = 85
print("Class recordA mark: \(recordA.mark)")   // 85
print("Class recordB mark: \(recordB.mark)")   // 85
// Changing the struct copy does not affect the original,
// but changing recordB also changes recordA because both refer to one object.
original.name = "Dilan"
