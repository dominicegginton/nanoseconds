import XCTest
@testable import Nanoseconds

final class NanosecondsTests: XCTestCase {
    func testResolution() {
        let start = Nanoseconds()
        let end = Nanoseconds()
        XCTAssertGreaterThan(end, start)
    }
}
