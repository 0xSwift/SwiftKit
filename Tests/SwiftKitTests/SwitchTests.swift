//
//  SwitchTests.swift
//  
//
//  Created by Zach Eriksen on 7/7/20.
//

import XCTest
@testable import SwiftKit

final class SwitchTests: XCTestCase {
    
    func test_switchmap() {
        let value = "qwerty"
        
        let switchedValue = switchmap(value: value,
                                     cases: [
                                        0: false,
                                        3.14: false,
                                        "qwerty": true
            ],
                                     default: nil)
        
        XCTAssertEqual(switchedValue, true)
    }
    
    func test_switcheach() {
        enum Example {
            case a, b, c, d
        }
        
        let value: Example = .c
        
        switcheach(value: value,
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
    
    func test_switchmapArray() {
        let list = [1, 2, 3]
        
        let switchedList = list.switchmap(cases: [
            0: "zero",
            1: "one",
            2: "two",
            3: "three"
        ], default: "Nil")
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    func test_switchmapString() {
        let list = "123"
        
        let switchedList = list.switchmap(cases: [
            "0": "zero",
            "1": "one",
            "2": "two",
            "3": "three"
        ], default: "Nil")
        
        XCTAssertEqual(switchedList, ["one", "two", "three"])
    }
    
    
    static var allTests = [
        ("test_switchin", test_switchmap),
        ("test_switchinClosure", test_switcheach),
        ("test_switchinArray", test_switchmapArray),
        ("test_switchinString", test_switchmapString)
    ]
}
