//
//  Convenience.swift
//  SwiftUIAgora
//
//  Created by Syed on 18/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import Foundation
import Alamofire

extension Client {
    
    func loginUser(_ params: [String: AnyObject], _ completion: @escaping(_ success: Bool, _ results: [String: AnyObject]?, _ error: String) -> Void) {

        let url = Constants.APIURL.logInURL

        let headerLogin = [
            Constants.convenience.accept: Constants.convenience.contentValue,
            Constants.convenience.contentType: Constants.convenience.contentValue
        ]
    _ = makeRequest(url, .post, headerLogin, parameters: params, completion: { (results, status, message) in

               if results != nil && status == 200 {
                completion(true, results as? [String: AnyObject], Constants.convenience.success)
               } else {
                completion(false, nil, Constants.convenience.invalidFields)
               }
               return
           })
    }
    
}

