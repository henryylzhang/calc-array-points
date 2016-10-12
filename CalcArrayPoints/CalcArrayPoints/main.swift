//
//  main.swift
//  CalcArrayPoints
//
//  Created by Henry Zhang on 10/8/16.
//  Copyright © 2016 henryylzhang. All rights reserved.
//

import Foundation

//arithmetic functions
func mathOperation(left : Int, right : Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right)
}

func add(left : Int, right : Int) -> Int {
    return left + right
}

func subtract(left : Int, right : Int) -> Int {
    return left - right
}

func multiply(left : Int, right : Int) -> Int {
    return left * right
}

func divide(left : Int, right : Int) -> Int {
    return left / right
}


//array functions
func reduce(array : [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

func add(array : [Int]) -> Int { //could use basic add function
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}

func multiply(array : [Int]) -> Int {
    var product = 1
    for num in array {
        product *= num
    }
    return product
}

func count(array : [Int]) -> Int {
    return array.count
}

func average(array : [Int]) -> Int { //could work in some way to use add
    var sum = 0
    for num in array {
        sum += num
    }
    return sum / array.count
}

//tuple functions
func add(tuple1: (Int, Int), tuple2: (Int, Int)) -> (Int, Int) {
    let result = (tuple1.0 + tuple2.0, tuple1.1 + tuple2.1)
    return result
}

func subtract(tuple1: (Int, Int), tuple2: (Int, Int)) -> (Int, Int) {
    let result = (tuple1.0 - tuple2.0, tuple1.1 - tuple2.1)
    return result
}

//dictionary functions
func add(p1: [String:Int], p2: [String:Int]) -> [String:Int] {
    var result = [String:Int]()
    for (key, _) in p1 { //should handle non x and y situations
        result[key] = p1[key]! + p2[key]!
    }
    return result
}

func subtract(p1: [String:Int], p2: [String:Int]) -> [String:Int] {
    var result = [String:Int]()
    for (key, _) in p1 {
        result[key] = p1[key]! - p2[key]!
    }
    return result
}

//func add(p1: [String:Double], p2: [String:Double]) -> [String:Double] { <---- This works, it's not great, but it does for Double and Ints
//    var result = [String:Double]()
//    for (key, _) in p1 {
//        result[key] = p1[key]! - p2[key]!
//    }
//    return result
//}


