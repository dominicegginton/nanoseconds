import XCTest
@testable import Nanoseconds

final class NanosecondsTests: XCTestCase {
    func testResolution() {
        let start = Nanoseconds()
        let end = Nanoseconds()
        XCTAssertGreaterThan(end, start)
    }

    func testTimeIntervalInitMethods () {
        let nanosecond: TimeInterval = TimeInterval(nanoseconds: 1)
        XCTAssertEqual(nanosecond, 1)
        let microsecond: TimeInterval = TimeInterval(microseconds: 1)
        XCTAssertEqual(microsecond, 1000)
        let milliseconds: TimeInterval = TimeInterval(milliseconds: 1)
        XCTAssertEqual(milliseconds, 1e+6)
        let seconds: TimeInterval = TimeInterval(seconds: 1)
        XCTAssertEqual(seconds, 1e+9)
        let minutes: TimeInterval = TimeInterval(minutes: 1)
        XCTAssertEqual(minutes, 6e+10)
        let hours: TimeInterval = TimeInterval(hours: 1)
        XCTAssertEqual(hours, 3.6e+12)
    }
}
