//**************************************************************
//
//  Optionals
//
//  Created by Harish Kataria
//  Copyright © 2018 Harish Kataria. All rights reserved.
//
//**************************************************************

import Foundation

public extension Optional where Wrapped: ExpressibleAsEmpty {
    /** The content value is the unwrapped value or the empty value if none */
    var content: Wrapped {
        switch self {
        case .some(let content):
            return content
        case .none:
            return Wrapped.empty
        }
    }
}

/*- Further shortcuts on Optionals wrapping Collections -*/

extension Optional where Wrapped: Collection {
    /** A Boolean value indicating whether the collection is empty. */
    public var isEmpty: Bool {
        switch self {
        case .some(let collection):
            return collection.isEmpty
        case .none:
            return true
        }
    }

    /** The number of elements in the collection */
    public var count: Int {
        switch self {
        case .some(let collection):
            return collection.count
        case .none:
            return 0
        }
    }

    /** The first element of the collection */
    public var first: Wrapped.Element? {
        switch self {
        case .some(let collection):
            return collection.first
        case .none:
            return nil
        }
    }
}
