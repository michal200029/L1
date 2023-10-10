import XCTest
@testable import L1

final class CalculatorTest: XCTestCase {

    func testPositiveScenarioForAddCalculation() {
        let c = Calc()
        let result = c.handle(firstValue: 3, secondValue:5, op: "+")
        
        XCTAssertEqual(result, 8.0)
    }
    
    func testNegitveScenarioForAddCalculation() {
        let c = Calc()
        let result = c.handle(firstValue: 4, secondValue:5, op: "+")
        
        XCTAssertNotEqual(result, 8.0)
    }
    
    func testPositiveScenarioForSubCalculation() {
        let result = Calc().handle(firstValue: 3, secondValue:5, op: "-")
        
        XCTAssertEqual(result, -2.0)
    }
    
    func testNegativeScenarioForSubCalculation() {
        let result = Calc().handle(firstValue: 3, secondValue:5, op: "-")
        
        XCTAssertNotEqual(result, -3.0)
    }
    
    func testPositiveScenarioForProdCalculation() {
        let result = Calc().handle(firstValue: 3, secondValue: 5, op: "*")
        
        XCTAssertEqual(result, 15.0)
    }
    
    func testNegaticeScenarioForProdCalculation() {
        let result = Calc().handle(firstValue: 4, secondValue: 5, op: "*")
        
        XCTAssertNotEqual(result, 15.0)
    }
    
    func testPositiveScenarioForDivCalculation() {
        let result = Calc().handle(firstValue: 10, secondValue: 5, op: "/")
        
        XCTAssertEqual(result, 2.0)
    }
    
    func testNegativeScenarioForDivCalculation() {
        let result = Calc().handle(firstValue: 10, secondValue: 5, op: "/")
        
        XCTAssertNotEqual(result, 3.0)
    }
    
    func testShouldReturnZeroIfDividingByZero() {
        let result = Calc().handle(firstValue: 10, secondValue: 0, op: "/")
        
        XCTAssertEqual(result, 0)
    }
    
    func testPositiveScenarioForSinCalculation() {
        let result = Calc().handle(firstValue: 10, secondValue: 0, op: "sin")
        
        XCTAssertEqual(result, -0.5440211108893698)
    }
    
    func testShouldReturnZeroIfVslueOutOfRange() {
        let result = Calc().handle(firstValue: 500, secondValue: 0, op: "sin")
        
        XCTAssertEqual(result, 0)
    }
    
    func testShouldReturnZeroIfVslueOutOfRange2() {
        let result = Calc().handle(firstValue: -10, secondValue: 0, op: "sin")
        
        XCTAssertEqual(result, 0)
    }
    
    func testShouldReturnZeroIfOperationUnknown() {
        let result = Calc().handle(firstValue: 10, secondValue: 0, op: "unknown")
        
        XCTAssertEqual(result, 0)
    }

}
