//
//  RequestOutcome.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import Alamofire
import ObjectMapper

open class RequestOutcome: NSObject, Mappable {
    var contact: AnyObject?;
    
    public   override init() {
    }
    required public init(map: Map) {
    }
    
    open  func mapping(map: Map) {
        contact <- map["contact"];
    }
}
