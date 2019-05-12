//
//  MappableExtension.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import ObjectMapper

public extension Mappable {
    func toJsonDictionary() -> [String : Any] {
        return Mapper().toJSON(self)
    }
}
