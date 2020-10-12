import XCTest
import UIKit
@testable import SwiftKit

final class SwiftKitTests: XCTestCase {
    func testExample() {
        
        SomeClass()
        .log()
            .do { (value) in
            value.data = "Hello"
        }
        .log()
        .configure { (value) in
            value.data = "World"
        }
        .log()
        .values(\.data)
        .log()
        .do { (object) in
            XCTAssertNotNil(object.kp)
        }
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

struct SomeValue: PowerType {
    var data = "Hello World"
}

class SomeClass: PowerClass {
     var data = "Hello World"
}

extension SomeClass: CustomStringConvertible {
    var description: String {
        "data: \(data)"
    }
}
