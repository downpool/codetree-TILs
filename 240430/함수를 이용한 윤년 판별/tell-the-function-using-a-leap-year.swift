import Foundation

let y = Int(readLine()!)!
var s = ""
if y % 4 == 0 {
    if y % 100 == 0 && y % 400 != 0 {
        s = "false"
    }
    s = "true"
}else{
    s = "false"
}

print(s)