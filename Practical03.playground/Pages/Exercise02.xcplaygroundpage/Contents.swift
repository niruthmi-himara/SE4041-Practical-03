import Foundation

// SE4041 – Practical 03
// Exercise 02 – guard

func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    print("Registered \(name)")
}
register("Kamal")
register(nil)

// Add another validation
func registerValidated(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }
    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }
    print("Registered \(name)")
}
registerValidated(nil)
registerValidated("")
registerValidated("Kamal")

// Activity 3
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }
    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }
    print("\(name) received \(mark) marks")
}
checkStudent(name: "Kamal", mark: 75)
checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
