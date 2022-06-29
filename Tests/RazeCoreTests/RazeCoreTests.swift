import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
    func testColoreRedEaul() {
        let color = RazeCore.Color.fromhexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazeColorsEqual() {
        let color = RazeCore.Color.fromhexString("006736")
        XCTAssertEqual(color, RazeCore.Color.razeColor)
    }
    
    func testSecoundaryColorsAreEqual() {
        let color = RazeCore.Color.fromhexString("FCFFFD")
        XCTAssertEqual(color, RazeCore.Color.secondaryRazeColor)
    }
    
    static var allTests = [
    ("testColorRedEaul", testColoreRedEaul),
    ("testRazeColorsAreEqual", testRazeColorsEqual),
    ("testSecondaryRazeColorsAreEqual", testSecoundaryColorsAreEqual)
    ]
}
