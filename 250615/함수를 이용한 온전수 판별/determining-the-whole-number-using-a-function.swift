let input = readLine()!
let parts = input.split(separator: " ")
let a = Int(parts[0])!
let b = Int(parts[1])!
// Please write your code here.

func check(_ num: Int) -> Bool {
    if num % 2 != 0 {
        if num % 10 != 5 {
            if (num % 3 != 0) || (num % 9 == 0){
                return true
            }
        }
    }
    return false
}

var ans = 0

for i in a ... b {
    if check(i) {
        ans += 1
    }
}

print(ans)