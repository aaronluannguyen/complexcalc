//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    // Addition for two Int parameters
    func add(lhs: Int, rhs: Int) -> Int {
        return lhs + rhs
    }
    
    // Addition for an array of Ints
    func add(_ args: [Int]) -> Int {
        var result = 0
        for i in 0..<(args.count) {
            result += args[i]
        }
        return result
    }
    
    // Addition for two points in paranthesis form
    func add(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (0, 0)
    }
    
    // Addition for two Points in dictionary form
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x" : 0, "y" : 0]
    }

    
    // Subtraction for two Int parameters
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }

    
    // Subtraction for two points in paranthesis form
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (0, 0)
    }
    
    // Subtraction for two Points in dictionary form
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        return ["x" : 0, "y" : 0]
    }
    
    
    // Multiplication for two Int parameters
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    // Multiplication for an array of Ints
    func multiply(_ args: [Int]) -> Int {
        if (args.count == 0) {
            return 0
        }
        var result = args[0]
        for i in 0..<(args.count) {
            result = result * args[i]
        }
        return result
    }
    
    
    // Division for two Int parameters
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    
    // Count Operation
    func count(_ args: [Int]) -> Int {
        if (args.count == 0) {
            return 0
        }
        return args.count
    }
    
    
    // Average Operation
    func avg(_ args: [Int]) -> Int {
        if (args.count == 0) {
            return 0
        }
        var result = 0
        for i in 0..<(args.count) {
            result += args[i]
        }
        return result / args.count
    }
    
    
    // MathOps operation w/ lhs, rhs, and op
    func mathOp(lhs: Int, rhs: Int, op: Int) -> Int {
        return 0
    }
    
    // MathOps operation w/ array of int, beg, and op
    func mathOp(args: [Int], beg: Int, op: Int) -> Int {
        return 0
    }
}
