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
        static let aboutUsURL = "https://agora-frontend.herokuapp.com"
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
    
    struct  labels {
        static let profile = "Profile"
        static let passwordSettings = "Password Settings"
        static let yourDetails = "Your Details"
        static let aboutUS = "About Us"
    }
    
    struct placeHolderText {
        static let userName = "Username"
        static let firstName = "First Name"
        static let lastName = "Last Name"
        static let email = "Email Id"
        static let password = "Password"
        static let oldPassword = "Old Password"
        static let newPassword = "New Password"
        static let confirmNewPasword = "Confirm New Password"
    }
    
    struct buttonsLabels {
        static let updateProfile = "Update Profile"
        static let changePassword = "Change Password"
        static let learnMore = "Learn More"
    }

    struct messages {
        static let aboutUsMessage = "Agora vote is a voting platform where users can create elections and invite friends to cast their votes. It supports a wide range of voting algorithms some of which are Majority, Egalitarian, Australian STV just to name a few"
    }
    
}
