//
//  Client.swift
//  SwiftUIAgora
//
//  Created by Syed on 18/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import Foundation
import Alamofire

class Client: NSObject {

    static let sharedInstance = Client()
    var session: URLSession

    private override init() {
        session = URLSession.shared
    }
    
    func makeRequest(_ url: String, _ httpMethod: HTTPMethod, _ headers: HTTPHeaders, parameters: [String: AnyObject], completion: @escaping (_ result: AnyObject?,_ statuscode: Int?,_ error: NSError?) -> Void) {

        func sendError(_ error: String) {
            debugPrint(error)
            completion(nil, nil,NSError(domain: "makeRequestMethod", code: 1))
        }


        Alamofire.request(url, method: httpMethod, parameters: parameters, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200..<409)
            .responseJSON { (response: DataResponse<Any>) in

                print(response)
                print(response.request?.url ?? "Error: invalid URL")

                switch(response.result) {

                case .success(_):
                    if let data = response.result.value as? Dictionary<String, Any> {

                        completion(data as AnyObject?,response.response?.statusCode, nil)
                    }
                    else {
                        
                        completion(nil,nil, NSError(domain: "Problem connecting to server!",code: 1))
                    }
                    break

                case .failure( _):
                    sendError("Problem connecting to server!")
                    break
                }
        }
    }
    
    func getApiUrl(_ apiUrl: String, _ method: String = "", _ param: String = "") -> String {
        return "\(apiUrl)\(method)\(param)"
    }
}

