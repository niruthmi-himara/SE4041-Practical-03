// SE4041 – Practical 03
// Exercise 03 – Tuples

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])
print(result.minimum)   // 48
print(result.maximum)   // 90
print(result.average)   // 68.75

// Tuple unpacking
do {
    let (low, high, average) = summary(of: [72, 65, 48, 90])
    print(low)
    print(high)
    print(average)
}
do {
    let (low, high, _) = summary(of: [72, 65, 48, 90])
    print("Low: \(low), High: \(high)")
}

// Activity 4
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let average = marks.isEmpty ? 0 : Double(total) / Double(marks.count)
    return (total, average)
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")       // 300
print("Average: \(analysis.average)")   // 75.0
