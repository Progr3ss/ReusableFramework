//
//  RazeNetworkingTests.swift
//  RazeCoreTests
//
//  Created by Martin Chibwe on 6/28/22.
//

import XCTest
import RazeCore

class RazeNetworkingTests: XCTestCase {
    
    func testLoadDataCall() {
        let manager = RazeCore.Networking.Manager()
        let expectation = XCTestExpectation(description: "called for data")
        guard let url  = URL(string: "https://www.raywenderlich.com/") else {
            return XCTFail("Could not create URL properly")
        }
        
        manager.loadData(from:url){ result in expectation.fulfill()
            switch result {
            case .success(let returnedData):
                XCTAssertNotNil(returnedData, "Response data is nil")
            case .failure(let error):
                XCTFail(error?.localizedDescription ?? "error forming error")
            }
        }
        wait(for: [expectation], timeout:5)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

}
