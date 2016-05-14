//
//  JHHttpClient.swift
//  Pods
//
//  Created by Huan Jiang on 5/12/16.
//
import Alamofire
import EVReflection
import AlamofireJsonToObjects

/// Simple Http Client wrapper
public class JHHttpClient: NSObject {
    
    // auto pick get/post Method for restful api, return as AnyObject
    public class func invoke(
        url:String,
        parameters:[String: AnyObject]? = nil,
        complete:(response: AnyObject?, error: NSError?) -> Void)
        -> Void{
            if parameters == nil {
                Alamofire.request(Method.GET, url, parameters: nil, encoding: ParameterEncoding.JSON, headers: nil)
                
                Alamofire.request(Method.GET, url, parameters: nil, encoding: ParameterEncoding.JSON, headers: nil)
                    .responseJSON(completionHandler: { (response) in
                        print(response.data)
                        print(response.result)
                        complete(response: response.result.value, error: response.result.error)
                    })
            }
            else {
                
                Alamofire.request(Method.POST, url, parameters: parameters, encoding: ParameterEncoding.JSON, headers: nil)
                    .responseJSON(completionHandler: { (response) in
                        print(response.data)
                        print(response.result)
                        complete(response: response.result.value, error: response.result.error)
                    })
            }
    }
    
    /// auto pick get/post Method for restful api, return as EVObject
    static func invokeObject<T: EVObject>(
        url:String,
        parameters:T? = nil,
        complete:(obj: T?, error: NSError?) -> Void)
        -> Void{
            if parameters == nil {
                
                Alamofire.request(Method.GET, url, parameters: nil, encoding: ParameterEncoding.JSON, headers: nil)
                    .responseObject(completionHandler: { (result: Result<T, NSError>) in
                        print(result)
                        complete(obj: result.value, error: result.error)
                    })
            }
            else {
                
                Alamofire.request(Method.POST, url, parameters: parameters?.toJsonString().toDictionary(), encoding: ParameterEncoding.JSON, headers: nil)
                    .responseObject(completionHandler: { (result: Result<T, NSError>) in
                        print(result)
                        complete(obj: result.value, error: result.error)
                    })
            }
            
    }
}
