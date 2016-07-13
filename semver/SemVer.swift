import Foundation

class SemVer: CustomStringConvertible, Comparable {

    let major: Int
    let minor: Int
    let patch: Int

    init(major: Int, minor: Int, patch: Int) {
        self.major = major
        self.minor = minor
        self.patch = patch
    }

    var description: String {
        return "\(major).\(minor).\(patch)"
    }

    // toArray

}

func == (lhs: SemVer, rhs: SemVer) -> Bool {
    return lhs.description == rhs.description
}

func < (lhs: SemVer, rhs: SemVer) -> Bool {
    if lhs.major < rhs.major {
        return true
    }
    if lhs.major > rhs.major {
        return false
    }
    if lhs.minor < rhs.minor {
        return true
    }
    if lhs.minor > rhs.minor {
        return false
    }
    if lhs.patch < rhs.patch {
        return true
    }
    if lhs.patch > rhs.patch {
        return false
    }
    return false
}
