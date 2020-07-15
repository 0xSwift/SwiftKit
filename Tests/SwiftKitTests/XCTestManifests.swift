import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(SwiftKitTests.allTests),
        testCase(SwitchinTests.allTests)
    ]
}
#endif
