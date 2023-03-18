import XCTest
@testable import Nanoseconds

final class NowTests: XCTestCase {
    func testNowResolution () {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertGreaterThan(end, start)
    }

    func testLessThan() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertTrue(start < end)
        XCTAssertFalse(end < start)
    }

    func testLessThanOrEqual() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertTrue(start <= end)
        XCTAssertFalse(end <= start)
    }

    func testGreaterThan() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertTrue(end > start)
        XCTAssertFalse(start > end)
    }

    func testGreaterThanOrEqual() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertTrue(end >= start)
        XCTAssertFalse(start >= end)
    }

    func testEqual() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertFalse(start == end)
    }

    func testNotEqual() {
        let start = Now()
        sleep(1)
        let end = Now()
        XCTAssertTrue(start != end)
    }

    func testSubtract() {
        let start = Now()
        sleep(1)
        let end = Now()
        let difference = end - start
        XCTAssertLessThan(difference, TimeInterval(nanoseconds: Double(end.rawValue)))
    }

    func testAdd() {
        let start = Now()
        sleep(1)
        let end = Now()
        let sum = start + end
        XCTAssertGreaterThan(sum, TimeInterval(nanoseconds: Double(start.rawValue)))
        XCTAssertGreaterThan(sum, TimeInterval(nanoseconds: Double(end.rawValue)))
    }
}