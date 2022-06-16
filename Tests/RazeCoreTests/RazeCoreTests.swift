import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
    func testColoreRedEaul() {
        let color = RazeCore.colorFromhexString("FF0000")
        XCTAssertEqual(color, .red)
    }
}
