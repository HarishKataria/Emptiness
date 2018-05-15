//**************************************************************
//
//  EmptinessTest
//
//  Created by Harish Kataria
//  Copyright © 2018 Harish Kataria. All rights reserved.
//
//**************************************************************

import XCTest
import Emptiness

final class EmptinessTest: XCTestCase {
    func testSafeValueEmptyWhenNil() {
        let sample: [String]? = nil
        XCTAssertEqual(sample.content.first, nil)
        XCTAssertEqual(sample.content.isEmpty, true)
        XCTAssertEqual(sample.content.count, 0)
    }

    func testSafeValueEmptyWhenEmpty() {
        let sample: [String]? = []
        XCTAssertEqual(sample.content.first, nil)
        XCTAssertEqual(sample.content.isEmpty, true)
        XCTAssertEqual(sample.content.count, 0)
    }

    func testSafeValueNotEmptyWhenNotEmpty() {
        let sample: [String]? = ["a", "b"]
        XCTAssertEqual(sample.content.first, "a")
        XCTAssertEqual(sample.content.isEmpty, false)
        XCTAssertEqual(sample.content.count, 2)
    }

    func testEmptyWhenNil() {
        let array: [String]? = nil
        XCTAssertTrue(array.isEmpty)

        let dict: [String: String]? = nil
        XCTAssertTrue(dict.isEmpty)

        let text: String? = nil
        XCTAssertTrue(text.isEmpty)
    }

    func testEmptyWhenEmpty() {
        let array: [String]? = Array.empty
        XCTAssertTrue(array.isEmpty)

        let dict: [String: String]? = Dictionary.empty
        XCTAssertTrue(dict.isEmpty)

        let text: String? = String.empty
        XCTAssertTrue(text.isEmpty)
    }

    func testNotEmptyWhenNotEmpty() {
        let array: [String]? = ["-"]
        XCTAssertFalse(array.isEmpty)

        let dict: [String: String]? = ["a": "1"]
        XCTAssertFalse(dict.isEmpty)

        let text: String? = "a"
        XCTAssertFalse(text.isEmpty)
    }

    func testCountIsZeroWhenNil() {
        let array: [String]? = nil
        XCTAssertEqual(array.count, 0)

        let dict: [String: String]? = nil
        XCTAssertEqual(dict.count, 0)

        let text: String? = nil
        XCTAssertEqual(text.count, 0)
    }

    func testCountIsZeroWhenEmpty() {
        let array: [String]? = Array.empty
        XCTAssertEqual(array.count, 0)

        let dict: [String: String]? = Dictionary.empty
        XCTAssertEqual(dict.count, 0)

        let text: String? = String.empty
        XCTAssertEqual(text.count, 0)
    }

    func testCountOneForOne() {
        let array: [String]? = ["-"]
        XCTAssertEqual(array.count, 1)

        let dict: [String: String]? = ["a": "1"]
        XCTAssertEqual(dict.count, 1)

        let text: String? = "a"
        XCTAssertEqual(text.count, 1)
    }

    func testCountThreeForThree() {
        let array: [String]? = ["1", "2", "3"]
        XCTAssertEqual(array.count, 3)

        let dict: [String: String]? = ["a": "1", "b": "2", "c": "3"]
        XCTAssertEqual(dict.count, 3)

        let text: String? = "abc"
        XCTAssertEqual(text.count, 3)
    }
}
