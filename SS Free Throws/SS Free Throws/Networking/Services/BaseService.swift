//
//  BaseService.swift
//  SS Free Throws
//
//  Created by Developer Account on 4/5/19.
//  Copyright © 2019 TApps. All rights reserved.
//

import Alamofire
import ObjectMapper

open class BaseService {
    
    fileprivate var config:ServiceConfig!
    
    open func  setConfig(_ serviceConfig:ServiceConfig) {
        config = serviceConfig;
    }
    
    open var myBlock:((_ name:String?,_ lastName:String?) -> String)?;
    open var beginRequest: (() -> Bool)?;
    open var completeRequest: (() -> ())?;
    
    open func postRequest(_ method: String, params: [String : AnyObject], callback: @escaping (RequestOutcome, Bool) -> Void) {
        var flag = true;
        if (beginRequest != nil) {
            flag = beginRequest!();
        }
        if (flag) {
            
            let endPoint = config.url + method;
            
            debugPrint(endPoint, config.headers, params)
            
            request(endPoint, method: .post, parameters: params, encoding: JSONEncoding.default, headers: config.headers).responseJSON { (response) in
                let httpresponse = response.response as? HTTPURLResponse
                let statusCode = httpresponse!.statusCode
                self.requestCallBack(response.result, callback: callback)
            }
        } else {
            completeHandler()
        }
        
    }
    
    fileprivate func requestCallBack(_ result: Result<Any>, callback: (RequestOutcome, Bool) -> Void)  {
        
        if(result.isSuccess) {
            let requestOutcome = Mapper<RequestOutcome>().map(JSON: result.value as! [String : Any]);
            callback(requestOutcome!, true);
        } else {
            callback(RequestOutcome(), false);
        }
        
        completeHandler()
    }
    
    fileprivate func completeHandler() {
        if (completeRequest != nil) {
            completeRequest!();
        }
    }
}
