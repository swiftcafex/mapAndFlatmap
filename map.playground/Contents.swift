//: Playground - noun: a place where people can play

import UIKit

// map 基本使用
let numbers = [1,2,3,4]

let result = numbers.map { $0 + 2 }
print(result)  // [3,4,5,6]


// 接收整数，返回字符串
let stringResult = numbers.map { "No. \($0)" }
print(stringResult) // ["No. 1", "No. 2", "No. 3", "No. 4"]


// flatMap 使用
var flatResult = numbers.flatMap { $0 + 2 }
print(flatResult) // [3,4,5,6]


// map 和 flatMap 的区分
let numbersCompound = [[1,2,3],[4,5,6]];
var res = numbersCompound.map { $0.map{ $0 + 2 } }
// [[3, 4, 5], [6, 7, 8]]

var flatRes = numbersCompound.flatMap { $0.map{ $0 + 2 } }
// [3, 4, 5, 6, 7, 8]


// flatMap 与 Optional
let optionalArray: [String?] = ["AA", nil, "BB", "CC"];
print(optionalArray)
var optionalResult = optionalArray.flatMap{ $0 }
print(optionalResult)


var imageNames = ["test.png", "aa.png", "icon.png"];
imageNames.flatMap{ UIImage(named: $0) }