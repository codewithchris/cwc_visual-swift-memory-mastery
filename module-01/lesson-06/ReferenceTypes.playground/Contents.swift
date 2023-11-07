/*
 REFERENCE TYPES
 Examples: class, UILabel, UIView, UITableView
 */

class Person {
    var name: String = ""
}

let bill = Person()
let billy = bill

bill.name = "William"

// What will the names be?
print("bill: \(bill.name), billy: \(billy.name)")

func change(person: Person) -> Person {
    person.name = "\(person.name) \(person.name)"
    return person
}

let william = change(person: billy)

// What will the names be?
print("bill: \(bill.name), billy: \(billy.name), william: \(william.name)")
