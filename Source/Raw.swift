//**************************************************************
//
//  Raw
//
//  Created by Harish Kataria
//  Copyright © 2018 Harish Kataria. All rights reserved.
//
//**************************************************************

import Foundation

extension RawRepresentable where Self: ExpressibleAsEmpty {
    public init?(raw: RawValue?) {
        guard let rawValue = raw else {
            self = Self.empty
            return
        }
        self.init(rawValue: rawValue)
    }

    public init(using raw: RawValue? = nil) {
        guard let rawValue = raw,
              let instance = Self(rawValue: rawValue) else {
            self = Self.empty
            return
        }
        self = instance
    }
}

extension RawRepresentable {
    public init?(raw: RawValue?) {
        guard let rawValue = raw else {
            return nil
        }
        self.init(rawValue: rawValue)
    }
}
