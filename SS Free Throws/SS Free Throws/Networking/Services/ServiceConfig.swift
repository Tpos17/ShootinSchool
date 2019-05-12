//
//  ServiceConfig.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import Foundation

public struct ServiceConfig{
    public var headers: [String:String] = [:]
    public var url:String = ""
    
    public init(headers:[String:String], url:String){
        self.headers = headers
        self.url = url
    }
}
