//
//  SwitchinTests.swift
//  
//
//  Created by Zach Eriksen on 7/7/20.
//

import XCTest
@testable import SwiftKit

final class SwitchinTests: XCTestCase {
    
    func testSwitchin() {
        let value = "qwerty"
        
        let switchedValue = switchin(value: value,
                                     cases: [
                                        0: false,
                                        3.14: false,
                                        "qwerty": true
            ],
                                     default: nil)
        
        XCTAssertEqual(switchedValue, true)
    }
    
    func testSwitchinClosure() {
        enum Example {
            case a, b, c, d
        }
        
        let value: Example = .c
        
        switchin(value: value,
                 cases: [
                    .a: {
                        XCTFail()
                    },
                    .b: {
                        XCTFail()
                    }
            ],default:  {
                XCTAssert(true)
        })
    }
    
    func testSwitchinArray() {
        let list = [1, 2, 3]
        
        let switchedList = list.switchin(cases: [
            0: "zero",
            1: "one",
            2: "two",
            3: "three"
        ], default: "Nil")
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    func testSwitchinString() {
        let list = "123"
        
        let switchedList = list.switchin(cases: [
            "0": "zero",
            "1": "one",
            "2": "two",
            "3": "three"
        ], default: "Nil")
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    
    static var allTests = [
        ("testSwitchin", testSwitchin),
        ("testSwitchinClosure", testSwitchinClosure),
        ("testSwitchinArray", testSwitchinArray),
        ("testSwitchinString", testSwitchinString)
    ]
}
