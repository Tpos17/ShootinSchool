//
//  ActiveCampaignService.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import Foundation
import ObjectMapper
import SwiftyJSON

public struct ActiveCampaignService{
    
    fileprivate enum activeCampaignMethods: String {
        case SaveOrUpdateContacts = "/api/3/contact/sync"
    }
    
    fileprivate var baseUrl = "https://instandart1554392433.api-us1.com"
    
    fileprivate var activeCampaignToken = "702ae79206a3dc276e083631341c11baddbcf101299cdda513295e84ea660a01c5331ef8"
    
    fileprivate var baseService = BaseService();
    
    public init() {
        baseService.setConfig(ServiceConfig(headers: ["Api-Token":activeCampaignToken], url: baseUrl))
    }
    
    public func saveUserContacts(_ params: UserContactsModel, callback:@escaping (Bool) -> Void){
        
        baseService.postRequest(activeCampaignMethods.SaveOrUpdateContacts.rawValue, params: params.toJsonDictionary() as [String : AnyObject], callback: {(request, status)in
            callback(status)
        })
    }
}
