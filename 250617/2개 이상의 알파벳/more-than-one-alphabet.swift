let inputString = readLine()!.split(separator: "")
// Please write your code here.

var sets: Set<String> = []

for i in inputString {
    sets.insert(String(i))
}

if sets.count >= 2 {
    print("Yes")
}else{
    print("No")
}