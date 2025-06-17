let text = readLine()!.split(separator: "")
let pattern = readLine()!.split(separator: "")

// Please write your code here.

var idx = -1

for i in 0 ... text.count - pattern.count {
    if text[i] == pattern[0] {
        idx = i
        for j in 0 ..< pattern.count {
            if text[i + j] == pattern[j] {
                continue
            }else{
                idx = -1
            }
        }
        if idx != -1 {
            break
        }
    }
}

print(idx)