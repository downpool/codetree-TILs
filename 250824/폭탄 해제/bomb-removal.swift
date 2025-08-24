import Foundation

let input = readLine()!.split(separator: " ")
let unlockCode = String(input[0])
let linearColor = Character(String(input[1]))
let time = Int(input[2])!

// Please write your code here.

class unlock {
    var unlockCode: String
    var linearColor: Character
    var time: Int

    init(_ unlockCode: String, _ linearColor: Character, _ time: Int) {
        self.unlockCode = unlockCode
        self.linearColor = linearColor
        self.time = time
    }

    func prints() {
        print("code : \(unlockCode)")
        print("color : \(linearColor)")
        print("second : \(time)")
    }
}

let codes = unlock(unlockCode, linearColor, time)

codes.prints()