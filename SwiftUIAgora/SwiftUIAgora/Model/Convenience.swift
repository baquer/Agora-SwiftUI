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

        let url = "https://agora-rest-api.herokuapp.com/api/v1/auth/login"

        let headerLogin = [
            "accept": "application/json",
            "Content-Type": "application/json"
        ]
    _ = makeRequest(url, .post, headerLogin, parameters: params, completion: { (results, status, message) in

               if results != nil && status == 200 {
                completion(true, results as? [String: AnyObject], "Successfully Logged In")
               } else {
                completion(false, nil, "Email ID / Password incorrect")
               }
               return
           })
    }
    
}

