import XCTest
@testable import Nanoseconds

final class TimeIntervalTests: XCTestCase {
    func testTimeIntervalCreationFromNanoseconds () {
        let nanoseconds = TimeInterval(nanoseconds: 1)
        XCTAssertEqual(nanoseconds, 0.000000001)
    }

    func testTimeIntervalCreationFromMicroseconds () {
        let microseconds = TimeInterval(microseconds: 1)
        XCTAssertEqual(microseconds, 0.000001)
    }

    func testTimeIntervalCreationFromMilliseconds () {
        let milliseconds = TimeInterval(milliseconds: 1)
        XCTAssertEqual(milliseconds, 0.001)
    }

    func testTimeIntervalCreationFromSeconds () {
        let seconds = TimeInterval(seconds: 1)
        XCTAssertEqual(seconds, 1)
    }

    func testTimeIntervalCreationFromMinutes () {
        let minutes = TimeInterval(minutes: 1)
        XCTAssertEqual(minutes, 60)
    }

    func testTimeIntervalCreationFromHours () {
        let hours = TimeInterval(hours: 1)
        XCTAssertEqual(hours, 3_600)
    }

    func testTimeIntervalNanoseconds () {
        let nanoseconds = TimeInterval(seconds: 1).nanoseconds
        XCTAssertEqual(nanoseconds, 1_000_000_000)
    }

    func testTimeIntervalMicroseconds () {
        let microseconds = TimeInterval(seconds: 1).microseconds
        XCTAssertEqual(microseconds, 1_000_000)
    }

    func testTimeIntervalMilliseconds () {
        let milliseconds = TimeInterval(seconds: 1).milliseconds
        XCTAssertEqual(milliseconds, 1_000)
    }

    func testTimeIntervalSeconds () {
        let seconds = TimeInterval(seconds: 1).seconds
        XCTAssertEqual(seconds, 1)
    }

    func testTimeIntervalMinutes () {
        let minutes = TimeInterval(seconds: 1).minutes
        XCTAssertEqual(minutes, 0.016666666666666666)
    }

    func testTimeIntervalHours () {
        let hours = TimeInterval(seconds: 1).hours
        XCTAssertEqual(hours, 0.0002777777777777778)
    }

    func testTimeIntervalTimeString () {
        let timeString = TimeInterval(seconds: 1).timeString
        XCTAssertEqual(timeString, "1s")
        let timeString2 = TimeInterval(seconds: 1_000).timeString
        XCTAssertEqual(timeString2, "16m 40s")
        let timeString3 = TimeInterval(seconds: 1_000_000).timeString
        XCTAssertEqual(timeString3, "11d 13h 46m 40s")
        let timeString4 = TimeInterval(seconds: 1_000_000_000).timeString
        XCTAssertEqual(timeString4, "11574d 1h 46m 40s")
    }
}