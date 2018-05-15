//**************************************************************
//
//  Elements
//
//  Created by Harish Kataria
//  Copyright © 2018 Harish Kataria. All rights reserved.
//
//**************************************************************

import Foundation

extension Array: ExpressibleAsEmpty {}
extension Dictionary: ExpressibleAsEmpty {}
extension Set: ExpressibleAsEmpty {}
extension String: ExpressibleAsEmpty {}
extension Int: ExpressibleAsEmpty {}
extension Bool: ExpressibleAsEmpty {}

extension ExpressibleAsEmpty where Self: ExpressibleByArrayLiteral {
    public static var empty: Self {
        return []
    }
}

extension ExpressibleAsEmpty where Self: ExpressibleByDictionaryLiteral {
    public static var empty: Self {
        return [:]
    }
}

extension ExpressibleAsEmpty where Self: ExpressibleByStringLiteral {
    public static var empty: Self {
        return ""
    }
}

extension ExpressibleAsEmpty where Self: ExpressibleByIntegerLiteral {
    public static var empty: Self {
        return 0
    }
}

extension ExpressibleAsEmpty where Self: ExpressibleByBooleanLiteral {
    public static var empty: Self {
        return false
    }
}

extension Data: ExpressibleAsEmpty {
    public static var empty: Data {
        return Data()
    }
}

extension Double: ExpressibleAsEmpty {
    public static var empty: Double {
        return 0
    }
}

extension Float: ExpressibleAsEmpty {
    public static var empty: Float {
        return 0
    }
}
