import XCTest
@testable import semver

class ComparisonTests: XCTestCase {

    func testDifferent() {
        let semVer142 = SemVer(major: 1, minor: 4, patch: 2)
        let semVer210 = SemVer(major: 2, minor: 1, patch: 0)
        XCTAssertNotEqual(semVer142, semVer210)
    }

    func testEqual() {
        let semVer142 = SemVer(major: 1, minor: 4, patch: 2)
        XCTAssertEqual(semVer142, semVer142)
    }

    func testBigger() {
        let semVer139 = SemVer(major: 1, minor: 3, patch: 9)
        let semVer142 = SemVer(major: 1, minor: 4, patch: 2)
        XCTAssert(semVer139 < semVer142)
    }

    func testSmaller() {
        let semVer1035 = SemVer(major: 10, minor: 3, patch: 5)
        let semVer2231 = SemVer(major: 2, minor: 23, patch: 1)
        XCTAssert(semVer1035 > semVer2231)
    }

}
