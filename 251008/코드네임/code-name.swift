import Foundation

class Agent {
    var codeName: String
    var score: Int

    init(codeName: String, score: Int) {
        self.codeName = codeName
        self.score = score
    }
}

var userData: [Agent] = []
for _ in 0..<5 {
    let input = readLine()!.split(separator: " ")
    let codeName = String(input[0])
    let score = Int(input[1])!
    let tempAgent = Agent(codeName: codeName, score: score)
    userData.append(tempAgent)
}

// Please write your code here.



var less: Agent = Agent(codeName: "temp", score: 101)

for i in userData {
    if i.score < less.score {
        less = i
    }
}

print("\(less.codeName) \(less.score)")