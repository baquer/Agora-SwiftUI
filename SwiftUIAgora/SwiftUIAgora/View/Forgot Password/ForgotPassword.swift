//
//  ForgotPassword.swift
//  SwiftUIAgora
//
//  Created by Syed on 16/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI

struct ForgotPassword: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var username: String = ""
    
    var body: some View {
            ZStack {
                Color.black
                .edgesIgnoringSafeArea(.all)
                VStack {
                    forgotImageView()
                    messageText()
                    bodyText()
                    Spacer()
                    customTextField(placeHolder: Constants.placeHolderText.userName, value: $username, lineColor: .black, width: 1)
                        .colorInvert()
                        .frame(width: 380)
                    Button(action: {
                        self.resetPasswordPerformed(username: self.username) { (verified, status) in
                            if verified {
                                print(Constants.labels.error)
                            } else {
                                print(Constants.labels.success)
                            }
                        }
                    }) {
                       sendLinkButtonContent()
                    }.padding()
                    Spacer()
                    Spacer()
                        .navigationBarTitle(Constants.navigationTitle.resetPassword)
                }
            }
    }
    
    // Reset Function Called using HTTP Method Request
    
    func resetPassword(_ params: [String: AnyObject], _ completion: @escaping(_ success: Bool, _ results: [String: AnyObject]?, _ error: String) -> Void) {
        
        let url = "https://agora-rest-api.herokuapp.com/api/v1/auth/forgotPassword/send/\(username)"
        _ = Client.sharedInstance.makeRequest(url, .post, [:], parameters: params, completion: { (results, status, message) in

               if results != nil && status == 200 {
                completion(true, results as? [String: AnyObject], Constants.labels.success)
               } else {
                completion(false, nil, Constants.labels.failure)
               }
               return
           })
    }
    
    // Allow Parameters

    func resetPasswordPerformed(username: String,completion: @escaping (Bool,String)->Void) {
        let userName = username
    let params: [String: AnyObject] = [
        Constants.parameter.userName: userName as AnyObject
        ]
    resetPassword(params as [String: AnyObject]) { (success, result, message) in
        DispatchQueue.main.async {
            if success {
                print(Constants.labels.success)
            } else {
                print(Constants.labels.failure)
            }
        }
    }
    }

}

struct ForgotPassword_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPassword()
    }
}

// Image View

struct forgotImageView: View {
    var body: some View {
        return Image(Constants.imageName.resetPass)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .cornerRadius(150)
        .padding(.bottom, 5)
    }
}

// Message Text

struct messageText: View {
    var body: some View {
        return Text(Constants.messages.resetPassText2)
            .font(.title)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

struct bodyText: View {
    var body: some View {
        return Text(Constants.messages.resetPassText)
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

// Send Link Button Content

struct sendLinkButtonContent: View {
    var body: some View {
        return Text(Constants.buttonsLabels.sendLink)
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: Constants.colorHexValue.yellow))
            .cornerRadius(15.0)
    }
}


