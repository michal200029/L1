//
//  Calculator.swift
//  L1
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Calc {
    func handle(firstValue: Int, secondValue: Int, op: String) -> Double {
        switch op {
            case "+": return Double(firstValue + secondValue)
            case "-": return Double(firstValue - secondValue)
            case "*": return Double(firstValue * secondValue)
            case "/":
                if (secondValue == 0) {
                    return Double(0)
                }
                return Double(firstValue/secondValue)
            case "sin": 
            if (firstValue < 0 || firstValue > 360) {
                return Double(0)
            }
            return Double(sin(Double(firstValue)))
            default: return Double(0)
        }
    }
}
