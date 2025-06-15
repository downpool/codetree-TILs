var input = readLine()!.split(separator: " ").map{Int($0)!}[0]
var ans = true
// Please write your code here.

if input % 4 == 0 {
    if (input % 100 == 0) && (input % 400 != 0) {
        ans = false
    }
} else {
    ans = false
}

print(ans)