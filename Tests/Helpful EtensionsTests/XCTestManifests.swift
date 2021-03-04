import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Helpful_EtensionsTests.allTests),
    ]
}
#endif
