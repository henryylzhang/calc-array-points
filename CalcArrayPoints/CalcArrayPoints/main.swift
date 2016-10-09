//
//  main.swift
//  CalcArrayPoints
//
//  Created by Student User on 10/8/16.
//  Copyright © 2016 henryylzhang. All rights reserved.
//

import Foundation

//arithmetic functions
func mathOp(int1 : Int, int2 : Int, op : (Int, Int) -> Int) -> Int {
    return op(int1, int2)
}

func addOp(int1 : Int, int2 : Int) -> Int {
    return int1 + int2
}

func subOp(int1 : Int, int2 : Int) -> Int {
    return int1 - int2
}

func mulOp(int1 : Int, int2 : Int) -> Int {
    return int1 * int2
}

func divOp(int1 : Int, int2 : Int) -> Int {
    return int1 / int2
}


//array functions
func arrayOp(intArray : [Int], op: ([Int]) -> Int) -> Int {
    return op(intArray)
}

func arrayAdd(intArray : [Int]) -> Int {
    var sum = 0
    for num in intArray {
        sum += num
    }
    return sum
}

func arrayMul(intArray : [Int]) -> Int {
    var product = 1
    for num in intArray {
        product *= num
    }
    return product
}

func arrayCount(intArray : [Int]) -> Int {
    return intArray.count
}

func arrayAvg(intArray : [Int]) -> Int { //could work in some way to use arrayAdd
    var sum = 0
    for num in intArray {
        sum += num
    }
    return sum / intArray.count
}
