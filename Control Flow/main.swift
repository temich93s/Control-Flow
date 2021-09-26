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


//MARK: While
print("\n//While")

var index1 = 1

while index1 <= 5 {
    print(index1, terminator: " ")
    index1 += 1
}
print()


//MARK: Цикл repeat-while
print("\n//Цикл repeat-while")

index1 = 6

repeat {
    print(index1, terminator: " ")
    index1 += 1
} while index1 <= 5

//MARK: Инструкция if
print("\n//Инструкция if")

var number2 = 8

if number2 < 5 {
    print("number2 < 5")
} else if number2 > 10 {
    print("number2 > 10")
} else {
    print("5 < number2 < 10")
}
