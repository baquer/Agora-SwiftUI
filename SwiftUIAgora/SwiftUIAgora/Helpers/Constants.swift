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
        static let contactUs = "CntcUs"
        static let moreOp = "MV"
        static let elections = "Election"
        static let viewImg1 = "Red0"
        static let viewImg2 = "Red1"
        static let viewImg3 = "Red2"
        static let viewImg4 = "Red3"
        static let resetPass = "ForgotP"
        static let RBug = "RBug"
        static let logout = "logout"
        static let profileImg = "Baq"
        static let inviteFriends = "checkmark.circle.fill"
        static let editProfile = "EditProfile"
    }
    struct APIURL {
        static let logInURL = "https://agora-rest-api.herokuapp.com/api/v1/auth/login"
        static let aboutUsURL = "https://agora-frontend.herokuapp.com"
        static let gitterURL = "https://gitter.im/AOSSIE/Agora-iOS"
        static let gitLabURL = "https://gitlab.com/aossie/agora-ios"
        static let reportBugURL = "https://gitlab.com/aossie/agora-ios/issues"
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
        static let contactUs = "Conatct Us"
        static let reportBug = "Report Abug"
        static let moreOptions = "Some More Options"
        static let ballotSecrecy = "How Secret are ballots?"
        static let listVoters = "Who can see the list of Voters?"
        static let continueText = "Continue"
        static let votingAlgorithm = "Voting Algorithm"
        static let addCandidates = "Add Candidates"
        static let unknowns = "Unknown"
        static let next = "Next"
        static let startDate = "Start Date"
        static let endDate = "End Date"
        static let createElections = "Create Elections"
        static let view = "View"
        static let totalElection = "TOTAL ELECTIONS"
        static let totalElectionBody = "Total Elections Conducted"
        static let pendingElection = "PENDING ELECTIONS"
        static let pendingElectionBody = "Total Pending Eections"
        static let ongoingElection = "ACTIVE ELECTIONS"
        static let ongoingElectionBody = "Total Active Eections"
        static let finishedElection = "FINISHED ELECTIONS"
        static let finishedElectionBody = "Total finished Eections"
        static let one = "1"
        static let zero = "0"
        static let editProfile = "Edit Profile"
        static let elections = "Elections"
        static let inviteFriends = "Invite Friends"
        static let logout = "Logout"
        static let signUp = "Sign Up"
        static let success = "Success!"
        static let failure = "Failure!"
        static let error = "error"
        static let agoraVote = "Agora Vote"
        static let connectWith = "Or Connect with"
        static let status = "statusChange"
        
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
        static let enterCandidates = "Enter Candidates Name"
        static let electionName = "Enter Election Name"
        static let electionDescription = "Enter Election Description"
        static let election = "Elections"
        static let securityQuestion = "Write Your Question Here"
        static let securityAnswer = "Write Your Answer Here"
        
    }
    
    struct buttonsLabels {
        static let updateProfile = "Update Profile"
        static let changePassword = "Change Password"
        static let learnMore = "Learn More"
        static let gitter = "GITTER"
        static let gitLab = "GITLAB"
        static let reportBug = "Report Bug"
        static let createEletion = "Create Election"
        static let addcandidates = "Add Candidates"
        static let signUp = "Sign Up"
        static let sendLink = "Reset Link"
        static let logIn = "Log In"
        static let facebook = "facebook"
        static let forgotButton = "Forgot Password?"
    }

    struct messages {
        static let aboutUsMessage = "Agora vote is a voting platform where users can create elections and invite friends to cast their votes. It supports a wide range of voting algorithms some of which are Majority, Egalitarian, Australian STV just to name a few"
        static let contactUsMessage = "Feel free to contact us on Gitter and work with us on GitLab"
        static let reportBugMessage = "Feel free to raise an issue so that our team can improve that as fast as possible"
        static let resetPassText = "We will send a verification link to your registered email address"
        static let resetPassText2 = "Please enter your user name"
    }
    
    struct  navigationTitle {
        static let votingAlgo = "Voting Algorithm"
        static let enterCandidates = "Enter Candidates"
        static let createElections = "Create Elections"
        static let dashboard = "Dashboard"
        static let resetPassword = "Reset Password"
        static let home = "Home"
        static let logIn = "Login"
    }
    
    struct  parameter {
        static let userName = "username"
        static let identifier = "identifier"
        static let password = "password"
    }
    
    struct userDefaultKey {
        static let token = "TOKEN"
    }
    
}
