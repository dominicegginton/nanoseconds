import XCTest
@testable import Nanoseconds

final class Substraction: XCTestCase {
    func testSubstraction () {
        let before = Now()
        sleep(2)
        let after = Now()
        XCTAssertGreaterThan((after - before).seconds, 1)
    }
}
