//
//  CircleImage.swift
//  SwiftUIAgora
//
//  Created by Syed on 08/03/20.
//  Copyright © 2020 Syed. All rights reserved.
//

import SwiftUI
import Alamofire

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    @State var status = UserDefaults.standard.value(forKey: "TOKEN") as? Bool ?? false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
            VStack{
               // For Activating login using API authentication comment the TabBar and uncomment Login in if part and uncomment TabBar and comment Login in else part
                if status {

                    TabBarSwiftUIView()
                    //Login()
                }
                else{

                    //TabBarSwiftUIView()
                    Login()
                }

            }.animation(.spring())
            .onAppear {

                NotificationCenter.default.addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in

                    let status = UserDefaults.standard.value(forKey: "TOKEN") as? Bool ?? false
                    self.status = status
                }
            }
    }
    }
}
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText: View {
    var body: some View {
        return Text("Log In")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 75)
            .foregroundColor(.white)
    }
}

struct UserImage: View {
    var body: some View {
        return Image("iTunesArtwork-1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 5)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        return Text("Log In")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color(hex: 0xFFBE00))
            .cornerRadius(15.0)
    }
}

struct ForgotButtonContent: View {
    var body: some View {
        return Text("Forgot Password?")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 380, height: 60, alignment: .bottomTrailing)
            .background(Color.black)
            .cornerRadius(15.0)
    }
}

struct Login: View {
    @State var selection: Int?  = nil
    @State var userName: String = ""
    @State var passWord: String = ""
    var body: some View {
        VStack {
                    Spacer()
                    UserImage()
                    WelcomeText()
                    Spacer()
                    CustomTextField(placeHolder: "Username", value: $userName, lineColor: .black, width: 1)
                        .frame(width:380)
                        .colorInvert()
                    CustomPasswordTextField(placeHolder: "Password", value: $passWord, lineColor: .black, width: 1).colorInvert()
                        .frame(width: 380)
                        .padding(30)
                    NavigationLink(destination: TabBarSwiftUIView(), tag: 1, selection: $selection) {
                    Button(action: {
                        // For activating login authentication using API uncomment the below code and comment self.selection = 1 in the nect line
                        self.selection = 1
//                        loginAuthentication(username: self.userName, password: self.passWord) { (verified, status) in
//                            print(UserDefaults.standard.value(forKey: "TOKEN")!)
//                            if verified {
//                                print("error")
//                            } else {
//                                self.selection = 1
//                                UserDefaults.standard.set(true, forKey: "status")
//                                print(UserDefaults.standard.value(forKey: "TOKEN")!)
//                                NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
//                            }
//                        }
                    }) {
                       LoginButtonContent()
                    }
                    }
                    NavigationLink(destination: ForgotPassword(), tag: 2, selection: $selection) {
                    Button(action: {
                        print(UserDefaults.standard.value(forKey: "TOKEN")!)
                        self.selection = 2
                    }) {
                        ForgotButtonContent()
                    }
                    } .navigationBarTitle("Log In", displayMode: .large)
                    Spacer()
                    Spacer()
                }
                .padding()
    }
}

func loginAuthentication(username: String,password : String,completion: @escaping (Bool,String)->Void) {
       let userName = username
       let passWord = password
       let params: [String: AnyObject] = [
           "identifier": userName as AnyObject,
           "password": passWord as AnyObject
           ]
       Client.sharedInstance.loginUser(params as [String: AnyObject]) { (success, result, message) in
           DispatchQueue.main.async {
               if success {
                   guard let email = result?["email"] as? String else {
                       fatalError("Unable to fetch email")
                   }
                   UserDefaults.standard.set(email, forKey: "EMAIL")
                   guard let firstName = result?["firstName"] as? String else {
                       fatalError("Unable to find first name")
                   }
                   UserDefaults.standard.set(firstName, forKey: "FIRSTNAME")
                   guard let lastName = result?["lastName"] as? String else {
                       fatalError("Unable to find last name")
                   }
                   UserDefaults.standard.set(lastName, forKey: "LASTNAME")
                   guard let userName = result?["username"] as? String else {
                       fatalError("Unable to find user name")
                   }
                   UserDefaults.standard.set(userName, forKey: "USERNAME")
                   for innerResult in result! {
                       if innerResult.key == "token" {
                           guard let expiryTime = innerResult.value["expiresOn"] as? String else {
                               fatalError("Unable to find expiry time")
                           }
                           UserDefaults.standard.set(expiryTime, forKey: "EXPIRESON")
                           guard let token = innerResult.value["token"] as? String else {
                               fatalError("Unable to find access token")
                           }
                           UserDefaults.standard.set(token, forKey: "TOKEN")
                       }
                   }
               }
               else {
                   print("error hai ye")
               }
           }
       }
   }
