import XCTest
@testable import Nanoseconds

final class NanosecondsTests: XCTestCase {
    func testNowResolution () {
        let start = Now()
        let end = Now()
        XCTAssertGreaterThan(end, start)
    }

    func testNowComparable () {
        let start = Now()
        let end = Now()
        XCTAssertTrue((end - start) as Any is TimeInterval)
        XCTAssertGreaterThan(end - start, 0)
        XCTAssertTrue((start + end) as Any is TimeInterval)
        XCTAssertTrue((start < end) as Any is Bool)
        XCTAssertEqual(start < end, true)
        XCTAssertTrue((start > end) as Any is Bool)
        XCTAssertEqual(start > end, false)
    }

    func testTimeIntervalInitMethods () {
        let nanosecond: TimeInterval = TimeInterval(nanoseconds: 1)
        XCTAssertEqual(nanosecond, 1)
        let microsecond: TimeInterval = TimeInterval(microseconds: 1)
        XCTAssertEqual(microsecond, 1000)
        let millisecond: TimeInterval = TimeInterval(milliseconds: 1)
        XCTAssertEqual(millisecond, 1e+6)
        let second: TimeInterval = TimeInterval(seconds: 1)
        XCTAssertEqual(second, 1e+9)
        let minute: TimeInterval = TimeInterval(minutes: 1)
        XCTAssertEqual(minute, 6e+10)
        let hour: TimeInterval = TimeInterval(hours: 1)
        XCTAssertEqual(hour, 3.6e+12)
    }

    func testTimeIntervalUnitConversion () {
        let minute: TimeInterval = TimeInterval(minutes: 1)
        XCTAssertEqual(minute, 6e+10)
        XCTAssertEqual(minute.nanoseconds, 6e+10)
        XCTAssertEqual(minute.microseconds, 6e+7)
        XCTAssertEqual(minute.milliseconds, 60000)
        XCTAssertEqual(minute.seconds, 60)
        XCTAssertEqual(minute.minutes, 1)
        XCTAssertEqual(minute.hours, 0.016666666666666666)
    }

    func testTimeIntervalStringConversion () {
    XCTAssertEqual(TimeInterval(seconds: 1).timeString, "1s")
    XCTAssertEqual(TimeInterval(minutes: 1).timeString, "1m 0s")
    XCTAssertEqual(TimeInterval(hours: 1).timeString, "1h 0m 0s")
    let duration = TimeInterval(hours: 1) + TimeInterval(minutes: 60) + TimeInterval(seconds: 90)
    XCTAssertEqual(duration.timeString, "2h 1m 30s")
    }
}
