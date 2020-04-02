//
//  Constants.swift
//  SwiftUIAgora
//
//  Created by Syed on 02/04/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import Foundation
class Constants {
    struct colorHexValue {
        static let yellow = 0xFFBE00
        static let green =  0x005229
    }
    
    struct imageName {
        static let logo = "iTunesArtwork-1"
        static let bug = "Bug"
        static let aboutUs = "About"
        static let connectUs = "ConnectUs"
        static let moreOp = "MV"
        static let elections = "Elections"
        static let viewImg1 = "Red0"
        static let viewImg2 = "Red1"
        static let viewImg3 = "Red2"
        static let viewImg4 = "Red3"
        static let resetPass = "ForgotP"
        static let RBug = "RBug"
        static let logout = "logout"
        static let profileImg = "Baq"
        static let inviteFriends = "checkmark.circle.fill"
    }
    struct APIURL {
        static let logInURL = "https://agora-rest-api.herokuapp.com/api/v1/auth/login"
    }
    
    struct clientConstants  {
        static let invalidURL = "Error: invalid URL"
        static let serverProblem = "Problem connecting to server!"
        static let makeMethod = "makeRequestMethod"
    }
   
    struct convenience {
        static let invalidFields = "Email ID / Password incorrect"
        static let success = "Successfully Logged In"
        static let accept = "accept"
        static let contentType = "Content-Type"
        static let contentValue = "application/json"
    }
    
}
