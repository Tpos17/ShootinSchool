//
//  UserContactsModel.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import UIKit
import Foundation
import ObjectMapper

open class Contact: NSObject, Mappable {
    open var email: String?
    open var firstName: String?
    
    open func toString()
    {
    }
    required public init(map: Map){
    }
    override public init() {
    }
    // Mappable
    open func mapping(map: Map){
        firstName <- map["firstName"]
        email <- map["email"]
    }
}

open class UserContactsModel: NSObject, Mappable{
    open var contact:Contact = Contact()
    
    open func toString()
    {
    }
    required public init(map: Map){
    }
    override public init() {
    }
    // Mappable
    open func mapping(map: Map){
        contact <- map["contact"]
    }
    
}

