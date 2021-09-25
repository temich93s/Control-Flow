//
//  main.swift
//  Control Flow
//
//  Created by 2lup on 26.09.2021.
//

import Foundation

print("Hello, World!")


//MARK: Циклы For-in
print("\n//Циклы For-in")

let someArray1 = ["a", "b", "c", "d", "e"]

for character in someArray1 {
    print("Character: \(character)")
}

let someDictionary1 = [1: "one", 2: "two", 3: "three"]

for (keys, values) in someDictionary1 {
    print("keys: \(keys), values: \(values)")
}

for index in 1...5 {
    print("\(index) * 5 = \(index * 5)")
}

for _ in 1..<4 {
    print("Hello!")
}

let minutes = 60
let minuteInterval = 5

for tickMark in stride(from: 0, to: minutes, by: 5) {
    print(tickMark, terminator: " ")
}
print()

for tickMark in stride(from: 0, through: minutes, by: minuteInterval) {
    print(tickMark, terminator: " ")
}
print()
