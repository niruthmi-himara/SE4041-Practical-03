// SE4041 – Practical 03
// Exercise 04 – Closures, map, filter, reduce

let marks = [72, 45, 65, 48, 90]

// filter – keeps values that match a condition
let passed = marks.filter { $0 >= 50 }
print(passed)   // [72, 65, 90]

// map – transforms every value
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)   // [77, 50, 70, 53, 95]

// reduce – combines all values into one
let total = marks.reduce(0) { $0 + $1 }
print(total)   // 320

// Activity 5 (no for loops)
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100 }
let increasedPrices = prices.map { $0 + 10 }
let totalPrice = prices.reduce(0) { $0 + $1 }

print("Prices over 100: \(expensivePrices)")   // [120.0, 250.0, 500.0, 150.0]
print("Increased prices: \(increasedPrices)")  // [130.0, 260.0, 90.0, 510.0, 160.0]
print("Total: \(totalPrice)")                  // 1100.0
