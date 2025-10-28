import Foundation

struct Person: Comparable {
    var name: String
    var streetAddress: String
    var region: String

    static func < (lhs: Person, rhs: Person) -> Bool{
        return lhs.name > rhs.name
    }
}

let n = Int(readLine()!)!
var people = [Person]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let name = String(input[0])
    let streetAddress = String(input[1])
    let region = String(input[2])
    people.append(Person(name: name, streetAddress: streetAddress, region: region))
}

// Please write your code here.

people.sort()

print("name \(people[0].name)")
print("addr \(people[0].streetAddress)")
print("city \(people[0].region)")