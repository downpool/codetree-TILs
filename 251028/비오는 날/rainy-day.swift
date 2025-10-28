import Foundation

let n = Int(readLine()!)!
var forecasts = [(date: String, day: String, weather: String)]()

for _ in 0..<n {
    let parts = readLine()!.split(separator: " ")
    let date = String(parts[0])
    let day = String(parts[1])
    let weather = String(parts[2])
    forecasts.append((date: date, day: day, weather: weather))
}

// Please write your code here.

var sortedForecasts = forecasts.sorted(by: {$0.date < $1.date})
for i in sortedForecasts {
    if i.weather == "Rain" {
        print("\(i.date) \(i.day) \(i.weather)")
        break
    }
}