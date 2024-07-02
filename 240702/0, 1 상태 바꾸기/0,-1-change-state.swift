import Foundation

// 첫 줄 입력 받기: nm[0]은 배열의 크기, nm[1]은 명령어 개수
let nm = readLine()!.split(separator: " ").map { Int($0)! }

// 두 번째 줄 입력 받기: 초기 배열 line
var line = readLine()!.split(separator: " ").map { Int($0)! }

// 명령어 개수(nm[1]) 만큼 반복하여 처리
for _ in 0..<nm[1] {
    let abc = readLine()!.split(separator: " ").map { Int($0)! }
    
    // 각 명령어에 따라 배열 line 수정
    if abc[0] == 1 {
        // Update 명령어: abc[1]-1 인덱스의 값을 abc[2]로 업데이트
        line[abc[1] - 1] = abc[2]
    } else if abc[0] == 2 {
        // Flip 명령어: abc[1]부터 abc[2]까지의 값을 뒤집기 (0을 1로, 1을 0으로)
        for i in abc[1]...abc[2] {
            line[i - 1] = 1 - line[i - 1]
        }
    } else if abc[0] == 3 {
        // Clear 명령어: abc[1]부터 abc[2]까지의 값을 0으로 설정
        for i in abc[1]...abc[2] {
            line[i - 1] = 0
        }
    } else if abc[0] == 4 {
        // Set 명령어: abc[1]부터 abc[2]까지의 값을 1로 설정
        for i in abc[1]...abc[2] {
            line[i - 1] = 1
        }
    }
}

// 최종 결과 출력: 배열 line을 공백으로 구분하여 출력
print(line.map { String($0) }.joined(separator: " "))