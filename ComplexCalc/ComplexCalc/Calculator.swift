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
        return (lhs.0 + rhs.0, lhs.1 + rhs.1)
    }
    
    // Addition for two Points in dictionary form
    func add(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        let p1xWrapped:Int? = lhs["x"]
        let p1x:Int = p1xWrapped!
        let p1yWrapped:Int? = lhs["y"]
        let p1y:Int = p1yWrapped!
        
        let p2xWrapped:Int? = rhs["x"]
        let p2x:Int = p2xWrapped!
        let p2yWrapped:Int? = rhs["y"]
        let p2y:Int = p2yWrapped!
        
        return ["x": p1x + p2x, "y": p1y + p2y]
    }

    
    // Subtraction for two Int parameters
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }

    
    // Subtraction for two points in paranthesis form
    func subtract(lhs: (Int, Int), rhs: (Int, Int)) -> (Int, Int) {
        return (lhs.0 - rhs.0, lhs.1 - rhs.1)
    }
    
    // Subtraction for two Points in dictionary form
    func subtract(lhs: [String : Int], rhs: [String : Int]) -> [String : Int] {
        let p1xWrapped:Int? = lhs["x"]
        let p1x:Int = p1xWrapped!
        let p1yWrapped:Int? = lhs["y"]
        let p1y:Int = p1yWrapped!
        
        let p2xWrapped:Int? = rhs["x"]
        let p2x:Int = p2xWrapped!
        let p2yWrapped:Int? = rhs["y"]
        let p2y:Int = p2yWrapped!
        
        return ["x": p1x - p2x, "y": p1y - p2y]
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
    func mathOp(lhs: Int, rhs: Int, op: (Int, Int) -> Int) -> Int {
        return op(lhs, rhs)
    }
    
    // MathOps operation w/ array of int, beg, and op
    func mathOp(args: [Int], beg: Int, op: (Int, Int) -> Int) -> Int {
        return args.reduce(beg) {op($0, $1)}
    }
}
