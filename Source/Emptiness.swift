//**************************************************************
//
//  Emptiness
//
//  Created by Harish Kataria
//  Copyright © 2018 Harish Kataria. All rights reserved.
//
//**************************************************************

import Foundation

/**
 * A protocol for types that have an empty value
 */
public protocol ExpressibleAsEmpty {
    /**
     * Empty value of this type. For example, in case of String type the value will be ""
     */
    static var empty: Self { get }
}

extension ExpressibleAsEmpty where Self: Equatable {
    /** A Boolean value indicating whether the value is empty. */
    public var equalsEmpty: Bool {
        return self == Self.empty
    }
}
