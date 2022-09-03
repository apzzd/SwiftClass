let range: Int = 200

let luckyNumbers: [Int] = [Int.random(in: 0...range), Int.random(in: 0...range), Int.random(in: 0...range)]

let yourNumbers: [Int] = [Int.random(in: 0...range), Int.random(in: 0...range), Int.random(in: 0...range), Int.random(in: 0...range), Int.random(in: 0...range)]

print("Your numbers: \(yourNumbers)")
print("Lucky numbers: \(luckyNumbers)")

var youWon: Bool = false

for num1 in yourNumbers {
    for num2 in luckyNumbers {
        if num1 == num2 {
            youWon = true
        }
    }
}

if youWon {
    print("You won the lottery!!")
}
   
