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


//MARK: Инструкция switch
print("\n//Инструкция switch")

number2 = 0

switch number2 {
case 1:
    print("number2 = 1")
case 2:
    print("number2 = 2")
case 3...7:
    print("number2 = 3...7")
case 8, 9:
    print("number2 = 8 or 9")
case 0:
    print("number2 = 0")
    print("!!!")
default:
    print("some other number")
}


//MARK: Отсутствие case-провалов
print("\n//Отсутствие case-провалов")

number2 = 2

switch number2 {
case 1:
    print("number2 = 1")
case 2:
    print("number2 = 2")
    fallthrough
case 3...7:
    print("number2 = 3...7")
case 8, 9:
    print("number2 = 8 or 9")
case 0:
    print("number2 = 0")
    print("!!!")
default:
    print("some other number")
}


//MARK: Соответствие диапазону
print("\n//Соответствие диапазону")

number2 = 2

switch number2 {
case 0...9:
    print("number2 = 0...9")
case 10...99:
    print("number2 = 10...99")
case 100...999:
    print("number2 = 100...999")
default:
    print("some other number")
}

//MARK: Кортежи
print("\n//Кортежи")

var somePoint1 = (0, 0)

switch somePoint1 {
case (0, 0):
    print("x,y = 0.0")
case (_, 0):
    print("y = 0")
case (0, _):
    print("x = 0")
case (-1...1,-1...1):
    print("-1 <= x,y <= 1")
default:
    print("some other point")
}

//MARK: Привязка значений
print("\n//Привязка значений")

somePoint1 = (0, 1)

switch somePoint1 {
case (0, 0):
    print("case 1:  x,y = 0.0")
case (let x, 0):
    print("case 2:  x = \(x), y = 0")
case (0, let y):
    print("case 3:  x = 0, y = \(y)")
case (let x,let y):
    print("case 4:  x = \(x), y = \(y)")
}
