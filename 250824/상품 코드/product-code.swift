let tokens = readLine()!.split(separator: " ")
let id2 = String(tokens[0])
let code2 = Int(tokens[1])!

// Please write your code here.

class Product {
    var name: String
    var code: Int

    init(_ name: String, _ code: Int) {
        self.name = name
        self.code = code
    }

    func prints() {
        print("product \(code) is \(name)")
    }
}

let a1 = Product("codetree", 50)
let a2 = Product(id2, code2)

a1.prints()
a2.prints()