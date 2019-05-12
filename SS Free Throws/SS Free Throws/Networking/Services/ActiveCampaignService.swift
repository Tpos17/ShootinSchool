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
    
    fileprivate var baseUrl = "https://shootinschool.api-us1.com"
    
    fileprivate var activeCampaignToken = "7e450d907d557642be6457cb7c00e307ee838d2dc2eaa3042418d90facd81402e27e5a82"
    
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
