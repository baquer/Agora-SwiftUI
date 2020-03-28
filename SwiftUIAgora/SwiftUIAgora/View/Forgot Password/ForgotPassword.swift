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
                    CustomTextField(placeHolder: "User Name", value: $username, lineColor: .black, width: 1)
                        .colorInvert()
                        .frame(width: 380)
                    Button(action: {
                        self.resetPasswordPerformed(username: self.username) { (verified, status) in
                            if verified {
                                print("error")
                            } else {
                                print("Success")
                            }
                        }
                    }) {
                       sendLinkButtonContent()
                    }.padding()
                    Spacer()
                    Spacer()
                        .navigationBarTitle("Reset Password", displayMode: .large)
                }
            }
    }
    func resetPassword(_ params: [String: AnyObject], _ completion: @escaping(_ success: Bool, _ results: [String: AnyObject]?, _ error: String) -> Void) {
        
        let url = "https://agora-rest-api.herokuapp.com/api/v1/auth/forgotPassword/send/\(username)"
        _ = Client.sharedInstance.makeRequest(url, .post, [:], parameters: params, completion: { (results, status, message) in

               if results != nil && status == 200 {
                completion(true, results as? [String: AnyObject], "success")
               } else {
                completion(false, nil, "fail")
               }
               return
           })
    }

    func resetPasswordPerformed(username: String,completion: @escaping (Bool,String)->Void) {
        let userName = username
    let params: [String: AnyObject] = [
        "username": userName as AnyObject
        ]
    resetPassword(params as [String: AnyObject]) { (success, result, message) in
        DispatchQueue.main.async {
            if success {
                print("Success!")
            } else {
                print("Success!")
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

struct forgotImageView: View {
    var body: some View {
        return Image("ForgotP")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 150, height: 150)
        .clipped()
        .cornerRadius(150)
        .padding(.bottom, 5)
    }
}

struct messageText: View {
    var body: some View {
        return Text("Please enter your user name")
            .font(.title)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

struct bodyText: View {
    var body: some View {
        return Text("We will send a verification link to your registered email address")
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .frame(alignment: .topLeading)
    }
}

struct sendLinkButtonContent: View {
    var body: some View {
        return Text("Reset Link")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}


