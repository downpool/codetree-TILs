import Foundation

let inputLine = readLine()!.split(separator: " ")
let id2: String = String(inputLine[0])
let level2: Int = Int(inputLine[1])!

// Please write your code here.

class Users {
    var id: String
    var level: Int

    init(_ id: String, _ level: Int) {
        self.id = id
        self.level = level
    }

    func printInfo() {
        print("user \(id) lv \(level)")
    }
}
let a1 = Users("codetree", 10)
let a2 = Users(id2, level2)

a1.printInfo()
a2.printInfo()