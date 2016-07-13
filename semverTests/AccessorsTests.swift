import XCTest
@testable import semver

class AccessorsTests: XCTestCase {

    func testCreationOfVersion142() {
        let semVer = SemVer(major: 1, minor: 4, patch: 2)
        XCTAssertEqual(semVer.major, 1)
        XCTAssertEqual(semVer.minor, 4)
        XCTAssertEqual(semVer.patch, 2)
    }

    func testCreationOfVersion210() {
        let semVer = SemVer(major: 2, minor: 1, patch: 0)
        XCTAssertEqual(semVer.major, 2)
        XCTAssertEqual(semVer.minor, 1)
        XCTAssertEqual(semVer.patch, 0)
    }

}
