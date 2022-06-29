import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
    func testColoreRedEaul() {
        let color = RazeCore.colorFromhexString("FF0000")
        XCTAssertEqual(color, .red)
    }
    
    func testRazeColorsEqual() {
        let color = RazeCore.colorFromhexString("006736")
        XCTAssertEqual(color, RazeCore.razeColor)
    }
    
    static var allTests = [
    ("testColorRedEaul", testColoreRedEaul),
    ("testRazeColorsAreEqual", testRazeColorsEqual)]
}
