import Foundation

let secretNumber: Int = Int.random(in: 0...20)
var numGuesses: Int = 0

print("Guess a number between 1 and 20...")

while true {
       let guess = readLine()
       numGuesses += 1
       if (Int(guess ?? "0") ?? 0) == secretNumber {
               print("You got it! It only took you \(numGuesses) tries!")
               break
       } else {
               if (Int(guess ?? "0") ?? 0) < secretNumber {
                       print("Too low!")
               } else {
                       print("Too high!")
               }
       }
}

