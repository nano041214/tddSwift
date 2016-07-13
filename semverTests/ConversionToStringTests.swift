import XCTest
@testable import semver

class ConversionToStringTests: XCTestCase {

    func testDescriptionOfVersion142ToString() {
        let semVer = SemVer(major: 1, minor: 4, patch: 2)
        XCTAssertEqual(String(semVer), "1.4.2")
    }

    func testDescriptionOfVersion210ToString() {
        let semVer = SemVer(major: 2, minor: 1, patch: 0)
        XCTAssertEqual(String(semVer), "2.1.0")
    }
    
}
