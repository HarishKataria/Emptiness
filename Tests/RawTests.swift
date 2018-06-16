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

private enum TestEnum: Int, ExpressibleAsEmpty {
    case A, B, C

    static var empty: TestEnum {
        return .A
    }
}

final class RawTest: XCTestCase {
    func testEmpty() {
        XCTAssertEqual(TestEnum.A, .empty)
    }

    func testInit() {
        let instance = TestEnum()
        XCTAssertEqual(instance, .empty)
    }

    func testReset() {
        var test = TestEnum.B
        test.reset()
        XCTAssertEqual(test, .empty)
    }
}
