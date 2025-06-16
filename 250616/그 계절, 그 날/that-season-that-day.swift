let inputLine = readLine()!
let inputValues = inputLine.split(separator: " ").map { Int(String($0))! }
let y = inputValues[0]
let m = inputValues[1]
let d = inputValues[2]

// Please write your code here.

func isYear(_ year: Int) -> Bool {
    var plus = true
    if year % 4 == 0 {
        if year % 100 == 0 {
            if year % 400 == 0 {
                plus = true
            }else{
                plus = false
            }
        }else{
            plus = true
        }
    }else{
        plus = false
    }
    return plus
}

let one = [1, 3, 5, 7, 8, 10, 12]
let noOne = [4, 6, 9, 11]
let two = [2]

func containn(_ month: Int, _ year: Bool) -> Int {
    if one.contains(month) {
        return 31
    }else if noOne.contains(month) {
        return 30
    }else if two.contains(month) && year {
        return 29
    }else{
        return 28
    }
}

func weather(_ month: Int) -> String {
    if month >= 3 && month <= 5 {
        return "Spring"
    }else if month >= 6 && month <= 8 {
        return "Summer"
    }else if month >= 9 && month <= 11 {
        return "Fall"
    }else if month == 12 || month <= 2 {
        return "Winter"
    }else{
        return "0"
    }
}

let rightYearPlus = isYear(y)

let fullDate = containn(m, rightYearPlus)

let ansWeathers = weather(m)

if d <= fullDate {
    print(ansWeathers)
}else{
    print("-1")
}